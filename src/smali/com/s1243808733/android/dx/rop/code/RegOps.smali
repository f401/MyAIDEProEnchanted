.class public final Lcom/s1243808733/android/dx/rop/code/RegOps;
.super Ljava/lang/Object;
.source "RegOps.java"


# static fields
.field public static final ADD:I = 0xe

.field public static final AGET:I = 0x26

.field public static final AND:I = 0x14

.field public static final APUT:I = 0x27

.field public static final ARRAY_LENGTH:I = 0x22

.field public static final CHECK_CAST:I = 0x2b

.field public static final CMPG:I = 0x1c

.field public static final CMPL:I = 0x1b

.field public static final CONST:I = 0x5

.field public static final CONV:I = 0x1d

.field public static final DIV:I = 0x11

.field public static final FILLED_NEW_ARRAY:I = 0x2a

.field public static final FILL_ARRAY_DATA:I = 0x39

.field public static final GET_FIELD:I = 0x2d

.field public static final GET_STATIC:I = 0x2e

.field public static final GOTO:I = 0x6

.field public static final IF_EQ:I = 0x7

.field public static final IF_GE:I = 0xa

.field public static final IF_GT:I = 0xc

.field public static final IF_LE:I = 0xb

.field public static final IF_LT:I = 0x9

.field public static final IF_NE:I = 0x8

.field public static final INSTANCE_OF:I = 0x2c

.field public static final INVOKE_CUSTOM:I = 0x3b

.field public static final INVOKE_DIRECT:I = 0x34

.field public static final INVOKE_INTERFACE:I = 0x35

.field public static final INVOKE_POLYMORPHIC:I = 0x3a

.field public static final INVOKE_STATIC:I = 0x31

.field public static final INVOKE_SUPER:I = 0x33

.field public static final INVOKE_VIRTUAL:I = 0x32

.field public static final MARK_LOCAL:I = 0x36

.field public static final MONITOR_ENTER:I = 0x24

.field public static final MONITOR_EXIT:I = 0x25

.field public static final MOVE:I = 0x2

.field public static final MOVE_EXCEPTION:I = 0x4

.field public static final MOVE_PARAM:I = 0x3

.field public static final MOVE_RESULT:I = 0x37

.field public static final MOVE_RESULT_PSEUDO:I = 0x38

.field public static final MUL:I = 0x10

.field public static final NEG:I = 0x13

.field public static final NEW_ARRAY:I = 0x29

.field public static final NEW_INSTANCE:I = 0x28

.field public static final NOP:I = 0x1

.field public static final NOT:I = 0x1a

.field public static final OR:I = 0x15

.field public static final PUT_FIELD:I = 0x2f

.field public static final PUT_STATIC:I = 0x30

.field public static final REM:I = 0x12

.field public static final RETURN:I = 0x21

.field public static final SHL:I = 0x17

.field public static final SHR:I = 0x18

.field public static final SUB:I = 0xf

.field public static final SWITCH:I = 0xd

.field public static final THROW:I = 0x23

.field public static final TO_BYTE:I = 0x1e

.field public static final TO_CHAR:I = 0x1f

.field public static final TO_SHORT:I = 0x20

.field public static final USHR:I = 0x19

.field public static final XOR:I = 0x16


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flippedIfOpcode(I)I
    .registers 3

    packed-switch p0, :pswitch_data_24

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized IF regop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_17  #0xc
    const/16 p0, 0x9

    return p0

    :pswitch_1a  #0xb
    const/16 p0, 0xa

    return p0

    :pswitch_1d  #0xa
    const/16 p0, 0xb

    return p0

    :pswitch_20  #0x9
    const/16 p0, 0xc

    :pswitch_22  #0x7, 0x8
    return p0

    nop

    :pswitch_data_24
    .packed-switch 0x7
        :pswitch_22  #00000007
        :pswitch_22  #00000008
        :pswitch_20  #00000009
        :pswitch_1d  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_17  #0000000c
    .end packed-switch
.end method

.method public static opName(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_c4

    .line 390
    :pswitch_3  #0x36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 387
    :pswitch_16  #0x3b
    const-string p0, "invoke-custom"

    return-object p0

    .line 386
    :pswitch_19  #0x3a
    const-string p0, "invoke-polymorphic"

    return-object p0

    .line 385
    :pswitch_1c  #0x39
    const-string p0, "fill-array-data"

    return-object p0

    .line 384
    :pswitch_1f  #0x38
    const-string p0, "move-result-pseudo"

    return-object p0

    .line 383
    :pswitch_22  #0x37
    const-string p0, "move-result"

    return-object p0

    .line 382
    :pswitch_25  #0x35
    const-string p0, "invoke-interface"

    return-object p0

    .line 381
    :pswitch_28  #0x34
    const-string p0, "invoke-direct"

    return-object p0

    .line 380
    :pswitch_2b  #0x33
    const-string p0, "invoke-super"

    return-object p0

    .line 379
    :pswitch_2e  #0x32
    const-string p0, "invoke-virtual"

    return-object p0

    .line 378
    :pswitch_31  #0x31
    const-string p0, "invoke-static"

    return-object p0

    .line 377
    :pswitch_34  #0x30
    const-string p0, "put-static"

    return-object p0

    .line 376
    :pswitch_37  #0x2f
    const-string p0, "put-field"

    return-object p0

    .line 375
    :pswitch_3a  #0x2e
    const-string p0, "get-static"

    return-object p0

    .line 374
    :pswitch_3d  #0x2d
    const-string p0, "get-field"

    return-object p0

    .line 373
    :pswitch_40  #0x2c
    const-string p0, "instance-of"

    return-object p0

    .line 372
    :pswitch_43  #0x2b
    const-string p0, "check-cast"

    return-object p0

    .line 371
    :pswitch_46  #0x2a
    const-string p0, "filled-new-array"

    return-object p0

    .line 370
    :pswitch_49  #0x29
    const-string p0, "new-array"

    return-object p0

    .line 369
    :pswitch_4c  #0x28
    const-string p0, "new-instance"

    return-object p0

    .line 368
    :pswitch_4f  #0x27
    const-string p0, "aput"

    return-object p0

    .line 367
    :pswitch_52  #0x26
    const-string p0, "aget"

    return-object p0

    .line 366
    :pswitch_55  #0x25
    const-string p0, "monitor-exit"

    return-object p0

    .line 365
    :pswitch_58  #0x24
    const-string p0, "monitor-enter"

    return-object p0

    .line 364
    :pswitch_5b  #0x23
    const-string p0, "throw"

    return-object p0

    .line 363
    :pswitch_5e  #0x22
    const-string p0, "array-length"

    return-object p0

    .line 362
    :pswitch_61  #0x21
    const-string p0, "return"

    return-object p0

    .line 361
    :pswitch_64  #0x20
    const-string p0, "to-short"

    return-object p0

    .line 360
    :pswitch_67  #0x1f
    const-string p0, "to-char"

    return-object p0

    .line 359
    :pswitch_6a  #0x1e
    const-string p0, "to-byte"

    return-object p0

    .line 358
    :pswitch_6d  #0x1d
    const-string p0, "conv"

    return-object p0

    .line 357
    :pswitch_70  #0x1c
    const-string p0, "cmpg"

    return-object p0

    .line 356
    :pswitch_73  #0x1b
    const-string p0, "cmpl"

    return-object p0

    .line 355
    :pswitch_76  #0x1a
    const-string p0, "not"

    return-object p0

    .line 354
    :pswitch_79  #0x19
    const-string p0, "ushr"

    return-object p0

    .line 353
    :pswitch_7c  #0x18
    const-string p0, "shr"

    return-object p0

    .line 352
    :pswitch_7f  #0x17
    const-string p0, "shl"

    return-object p0

    .line 351
    :pswitch_82  #0x16
    const-string p0, "xor"

    return-object p0

    .line 350
    :pswitch_85  #0x15
    const-string p0, "or"

    return-object p0

    .line 349
    :pswitch_88  #0x14
    const-string p0, "and"

    return-object p0

    .line 348
    :pswitch_8b  #0x13
    const-string p0, "neg"

    return-object p0

    .line 347
    :pswitch_8e  #0x12
    const-string p0, "rem"

    return-object p0

    .line 346
    :pswitch_91  #0x11
    const-string p0, "div"

    return-object p0

    .line 345
    :pswitch_94  #0x10
    const-string p0, "mul"

    return-object p0

    .line 344
    :pswitch_97  #0xf
    const-string p0, "sub"

    return-object p0

    .line 343
    :pswitch_9a  #0xe
    const-string p0, "add"

    return-object p0

    .line 342
    :pswitch_9d  #0xd
    const-string p0, "switch"

    return-object p0

    .line 341
    :pswitch_a0  #0xc
    const-string p0, "if-gt"

    return-object p0

    .line 340
    :pswitch_a3  #0xb
    const-string p0, "if-le"

    return-object p0

    .line 339
    :pswitch_a6  #0xa
    const-string p0, "if-ge"

    return-object p0

    .line 338
    :pswitch_a9  #0x9
    const-string p0, "if-lt"

    return-object p0

    .line 337
    :pswitch_ac  #0x8
    const-string p0, "if-ne"

    return-object p0

    .line 336
    :pswitch_af  #0x7
    const-string p0, "if-eq"

    return-object p0

    .line 335
    :pswitch_b2  #0x6
    const-string p0, "goto"

    return-object p0

    .line 334
    :pswitch_b5  #0x5
    const-string p0, "const"

    return-object p0

    .line 333
    :pswitch_b8  #0x4
    const-string p0, "move-exception"

    return-object p0

    .line 332
    :pswitch_bb  #0x3
    const-string p0, "move-param"

    return-object p0

    .line 331
    :pswitch_be  #0x2
    const-string p0, "move"

    return-object p0

    .line 330
    :pswitch_c1  #0x1
    const-string p0, "nop"

    return-object p0

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_c1  #00000001
        :pswitch_be  #00000002
        :pswitch_bb  #00000003
        :pswitch_b8  #00000004
        :pswitch_b5  #00000005
        :pswitch_b2  #00000006
        :pswitch_af  #00000007
        :pswitch_ac  #00000008
        :pswitch_a9  #00000009
        :pswitch_a6  #0000000a
        :pswitch_a3  #0000000b
        :pswitch_a0  #0000000c
        :pswitch_9d  #0000000d
        :pswitch_9a  #0000000e
        :pswitch_97  #0000000f
        :pswitch_94  #00000010
        :pswitch_91  #00000011
        :pswitch_8e  #00000012
        :pswitch_8b  #00000013
        :pswitch_88  #00000014
        :pswitch_85  #00000015
        :pswitch_82  #00000016
        :pswitch_7f  #00000017
        :pswitch_7c  #00000018
        :pswitch_79  #00000019
        :pswitch_76  #0000001a
        :pswitch_73  #0000001b
        :pswitch_70  #0000001c
        :pswitch_6d  #0000001d
        :pswitch_6a  #0000001e
        :pswitch_67  #0000001f
        :pswitch_64  #00000020
        :pswitch_61  #00000021
        :pswitch_5e  #00000022
        :pswitch_5b  #00000023
        :pswitch_58  #00000024
        :pswitch_55  #00000025
        :pswitch_52  #00000026
        :pswitch_4f  #00000027
        :pswitch_4c  #00000028
        :pswitch_49  #00000029
        :pswitch_46  #0000002a
        :pswitch_43  #0000002b
        :pswitch_40  #0000002c
        :pswitch_3d  #0000002d
        :pswitch_3a  #0000002e
        :pswitch_37  #0000002f
        :pswitch_34  #00000030
        :pswitch_31  #00000031
        :pswitch_2e  #00000032
        :pswitch_2b  #00000033
        :pswitch_28  #00000034
        :pswitch_25  #00000035
        :pswitch_3  #00000036
        :pswitch_22  #00000037
        :pswitch_1f  #00000038
        :pswitch_1c  #00000039
        :pswitch_19  #0000003a
        :pswitch_16  #0000003b
    .end packed-switch
.end method
