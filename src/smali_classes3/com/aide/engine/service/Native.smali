.class public Lcom/aide/engine/service/Native;
.super Ljava/lang/Object;


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static j6:Lcom/aide/engine/service/Native;


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2fad572ac35ded6fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xa87eca0a6578a8cL  # -7.229941012395122E257

    :try_start_6
    const-class v3, Lcom/aide/engine/service/Native;

    const-wide v4, 0x42b89166728c1198L  # 2.7012768107537594E13

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/engine/service/Native;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/engine/service/Native;

    invoke-direct {v3}, Lcom/aide/engine/service/Native;-><init>()V

    sput-object v3, Lcom/aide/engine/service/Native;->j6:Lcom/aide/engine/service/Native;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/Native;->FH:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x14815424bd46ae30L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7eddfea5b43587bL

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/Native;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/Native;->FH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public a(II)I
    .registers 11

    const/16 v0, 0xc

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/16 v4, 0xd

    const/16 v5, 0x9

    const/4 v6, 0x7

    const/16 v7, 0xe

    packed-switch p1, :pswitch_data_66

    :pswitch_f  #0x6, 0x8, 0xa, 0xb
    goto/16 :goto_62

    :pswitch_11  #0xe
    if-eq p2, v3, :cond_21

    if-eq p2, v2, :cond_21

    if-eq p2, v1, :cond_21

    if-eq p2, v6, :cond_21

    if-eq p2, v5, :cond_21

    if-eq p2, v0, :cond_21

    if-eq p2, v7, :cond_21

    if-ne p2, v4, :cond_62

    :cond_21
    :goto_21
    const/16 p2, 0xe

    goto :goto_64

    :pswitch_24  #0xd
    if-eq p2, v3, :cond_36

    if-eq p2, v2, :cond_36

    if-eq p2, v1, :cond_36

    if-eq p2, v6, :cond_36

    if-eq p2, v5, :cond_36

    if-eq p2, v0, :cond_36

    if-ne p2, v4, :cond_33

    goto :goto_36

    :cond_33
    if-ne p2, v7, :cond_62

    goto :goto_21

    :cond_36
    :goto_36
    const/16 p2, 0xd

    goto :goto_64

    :pswitch_39  #0x9
    if-eq p2, v3, :cond_4b

    if-eq p2, v2, :cond_4b

    if-eq p2, v1, :cond_4b

    if-eq p2, v6, :cond_4b

    if-ne p2, v0, :cond_44

    goto :goto_4b

    :cond_44
    if-eq p2, v5, :cond_64

    if-eq p2, v4, :cond_64

    if-ne p2, v7, :cond_62

    goto :goto_64

    :cond_4b
    :goto_4b
    const/16 p2, 0x9

    goto :goto_64

    :pswitch_4e  #0x3, 0x4, 0x5, 0x7, 0xc
    if-eq p2, v3, :cond_60

    if-eq p2, v2, :cond_60

    if-eq p2, v1, :cond_60

    if-eq p2, v6, :cond_60

    if-ne p2, v0, :cond_59

    goto :goto_60

    :cond_59
    if-eq p2, v5, :cond_64

    if-eq p2, v4, :cond_64

    if-ne p2, v7, :cond_62

    goto :goto_64

    :cond_60
    :goto_60
    const/4 p2, 0x7

    goto :goto_64

    :cond_62
    :goto_62
    const/16 p2, 0xa

    :cond_64
    :goto_64
    return p2

    nop

    :pswitch_data_66
    .packed-switch 0x3
        :pswitch_4e  #00000003
        :pswitch_4e  #00000004
        :pswitch_4e  #00000005
        :pswitch_f  #00000006
        :pswitch_4e  #00000007
        :pswitch_f  #00000008
        :pswitch_39  #00000009
        :pswitch_f  #0000000a
        :pswitch_f  #0000000b
        :pswitch_4e  #0000000c
        :pswitch_24  #0000000d
        :pswitch_11  #0000000e
    .end packed-switch
.end method

.method public b(II)Z
    .registers 8

    const/4 v0, 0x5

    const/4 v1, 0x7

    const/16 v2, 0x9

    const/16 v3, 0xd

    const/16 v4, 0xe

    packed-switch p1, :pswitch_data_46

    :pswitch_b  #0x6, 0x8, 0xa, 0xb
    goto :goto_44

    :pswitch_c  #0xd
    if-ne p2, v4, :cond_44

    goto :goto_42

    :pswitch_f  #0xc
    if-eq p2, v1, :cond_42

    if-eq p2, v2, :cond_42

    if-eq p2, v3, :cond_42

    if-ne p2, v4, :cond_44

    goto :goto_42

    :pswitch_18  #0x9
    if-eq p2, v3, :cond_42

    if-ne p2, v4, :cond_44

    goto :goto_42

    :pswitch_1d  #0x7
    if-eq p2, v2, :cond_42

    if-eq p2, v3, :cond_42

    if-ne p2, v4, :cond_44

    goto :goto_42

    :pswitch_24  #0x5
    if-eq p2, v1, :cond_42

    if-eq p2, v2, :cond_42

    if-eq p2, v3, :cond_42

    if-ne p2, v4, :cond_44

    goto :goto_42

    :pswitch_2d  #0x4
    if-eq p2, v0, :cond_42

    if-eq p2, v1, :cond_42

    if-eq p2, v2, :cond_42

    if-eq p2, v3, :cond_42

    if-ne p2, v4, :cond_44

    goto :goto_42

    :pswitch_38  #0x3
    if-eq p2, v0, :cond_42

    if-eq p2, v1, :cond_42

    if-eq p2, v2, :cond_42

    if-eq p2, v3, :cond_42

    if-ne p2, v4, :cond_44

    :cond_42
    :goto_42
    const/4 p1, 0x1

    goto :goto_45

    :cond_44
    :goto_44
    const/4 p1, 0x0

    :goto_45
    return p1

    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_38  #00000003
        :pswitch_2d  #00000004
        :pswitch_24  #00000005
        :pswitch_b  #00000006
        :pswitch_1d  #00000007
        :pswitch_b  #00000008
        :pswitch_18  #00000009
        :pswitch_b  #0000000a
        :pswitch_b  #0000000b
        :pswitch_f  #0000000c
        :pswitch_c  #0000000d
    .end packed-switch
.end method

.method public c(I)I
    .registers 2

    packed-switch p1, :pswitch_data_1e

    const/4 p1, 0x0

    goto :goto_1d

    :pswitch_5  #0x9
    const/4 p1, 0x2

    goto :goto_1d

    :pswitch_7  #0x8
    const/4 p1, 0x1

    goto :goto_1d

    :pswitch_9  #0x7
    const/16 p1, 0xe

    goto :goto_1d

    :pswitch_c  #0x6
    const/16 p1, 0xd

    goto :goto_1d

    :pswitch_f  #0x5
    const/16 p1, 0x9

    goto :goto_1d

    :pswitch_12  #0x4
    const/4 p1, 0x7

    goto :goto_1d

    :pswitch_14  #0x3
    const/16 p1, 0xc

    goto :goto_1d

    :pswitch_17  #0x2
    const/4 p1, 0x5

    goto :goto_1d

    :pswitch_19  #0x1
    const/4 p1, 0x3

    goto :goto_1d

    :pswitch_1b  #0x0
    const/16 p1, 0xb

    :goto_1d
    return p1

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_19  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_12  #00000004
        :pswitch_f  #00000005
        :pswitch_c  #00000006
        :pswitch_9  #00000007
        :pswitch_7  #00000008
        :pswitch_5  #00000009
    .end packed-switch
.end method

.method public d(I)I
    .registers 2

    return p1
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public isX86()Z
    .registers 3

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
