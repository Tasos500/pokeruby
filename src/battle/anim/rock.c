#include "global.h"
#include "battle.h"
#include "battle_anim.h"
#include "decompress.h"
#include "palette.h"
#include "rom_8077ABC.h"
#include "task.h"
#include "trig.h"

extern s16 gBattleAnimArgs[];
extern u8 gAnimBankAttacker;
extern u8 gAnimBankTarget;
extern u16 gBattle_BG1_X;
extern u16 gBattle_BG1_Y;

extern const u8 gBattleAnimBackgroundTilemap_SandstormBrew[];
extern const u8 gBattleAnimBackgroundImage_SandstormBrew[];
extern const u16 gBattleAnimSpritePalette_261[];

static void sub_80DCF1C(struct Sprite *sprite);
static void sub_80DD02C(struct Sprite *sprite);
void sub_80DD190(u8 taskId);


void sub_80DCE9C(struct Sprite *sprite)
{
    if (gBattleAnimArgs[3] != 0)
        sub_807A3FC(gAnimBankTarget, 0, &sprite->pos1.x, &sprite->pos1.y);

    sprite->pos1.x += gBattleAnimArgs[0];
    sprite->pos1.y += 14;

    StartSpriteAnim(sprite, gBattleAnimArgs[1]);
    AnimateSprite(sprite);

    sprite->data[0] = 0;
    sprite->data[1] = 0;
    sprite->data[2] = 4;
    sprite->data[3] = 16;
    sprite->data[4] = -70;
    sprite->data[5] = gBattleAnimArgs[2];

    StoreSpriteCallbackInData(sprite, sub_80DCF1C);
    sprite->callback = sub_8078278;
    sprite->callback(sprite);
}

static void sub_80DCF1C(struct Sprite *sprite)
{
    sprite->pos1.x += sprite->data[5];

    sprite->data[0] = 192;
    sprite->data[1] = sprite->data[5];
    sprite->data[2] = 4;
    sprite->data[3] = 32;
    sprite->data[4] = -24;

    StoreSpriteCallbackInData(sprite, move_anim_8074EE0);
    sprite->callback = sub_8078278;
    sprite->callback(sprite);
}

void sub_80DCF60(struct Sprite *sprite)
{
    StartSpriteAnim(sprite, gBattleAnimArgs[5]);
    AnimateSprite(sprite);

    if (GetBankSide(gAnimBankAttacker) != SIDE_PLAYER)
        sprite->pos1.x -= gBattleAnimArgs[0];
    else
        sprite->pos1.x += gBattleAnimArgs[0];

    sprite->pos1.y += gBattleAnimArgs[1];

    sprite->data[0] = gBattleAnimArgs[4];
    sprite->data[1] = sprite->pos1.x;
    sprite->data[2] = sprite->pos1.x + gBattleAnimArgs[2];
    sprite->data[3] = sprite->pos1.y;
    sprite->data[4] = sprite->pos1.y + gBattleAnimArgs[3];

    sub_8078A5C(sprite);
    sprite->data[3] = 0;
    sprite->data[4] = 0;

    sprite->callback = sub_8078394;
    StoreSpriteCallbackInData(sprite, move_anim_8074EE0);
}

void sub_80DCFE4(struct Sprite *sprite)
{
    if (gBattleAnimArgs[6] == 0)
        sub_80787B0(sprite, 0);
    else
        sub_8078764(sprite, 0);

    sprite->data[0] = gBattleAnimArgs[3];
    sprite->data[1] = gBattleAnimArgs[2];
    sprite->data[2] = gBattleAnimArgs[4];
    sprite->data[3] = gBattleAnimArgs[5];

    sprite->callback = sub_80DD02C;
}

static void sub_80DD02C(struct Sprite *sprite)
{
    sprite->data[4] += sprite->data[1];
    sprite->pos2.y = -(sprite->data[4] >> 8);
    sprite->pos2.x = Sin(sprite->data[5], sprite->data[3]);
    sprite->data[5] = (sprite->data[5] + sprite->data[2]) & 0xFF;

    if (--sprite->data[0] == -1)
    {
        DestroyAnimSprite(sprite);
    }
}

void do_boulder_dust(u8 taskId)
{
    struct Struct_sub_8078914 subStruct;
    int var0 = 0;

    REG_BLDCNT = 0x3F42;
    REG_BLDALPHA = 0x1000;
    REG_BG1CNT_BITFIELD.priority = 1;
    REG_BG1CNT_BITFIELD.screenSize = 0;

    if (!IsContest())
        REG_BG1CNT_BITFIELD.charBaseBlock = 1;

    gBattle_BG1_X = 0;
    gBattle_BG1_Y = 0;
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;

    sub_8078914(&subStruct);
    DmaFill32Defvars(3, 0, subStruct.field_4, 0x1000);
    LZDecompressVram(&gBattleAnimBackgroundTilemap_SandstormBrew, subStruct.field_4);
    LZDecompressVram(&gBattleAnimBackgroundImage_SandstormBrew, subStruct.field_0);
    LoadCompressedPalette(&gBattleAnimSpritePalette_261, subStruct.field_8 << 4, 32);

    if (IsContest())
        sub_80763FC(subStruct.field_8, (u16 *)subStruct.field_4, 0, 0);

    if (gBattleAnimArgs[0] != 0 && GetBankSide(gAnimBankAttacker) != SIDE_PLAYER)
        var0 = 1;

    gTasks[taskId].data[0] = var0;
    gTasks[taskId].func = sub_80DD190;
}
