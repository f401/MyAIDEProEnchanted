.class public Lcom/aide/engine/SourceEntity;
.super Lcom/s1243808733/aide/util/BaseObject;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/engine/SourceEntity$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private BT:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x166e5472a1b3fa00L
    .end annotation
.end field

.field private EQ:Z
    .annotation runtime Labcd/ru;
        field = -0x9d116ff7591c3d8L
    .end annotation
.end field

.field private FH:Lcom/aide/engine/SourceEntity$a;
    .annotation runtime Labcd/ru;
        field = 0x1b29e6904011bfc0L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x6bd5f4fc11b20L
    .end annotation
.end field

.field private J0:I
    .annotation runtime Labcd/ru;
        field = 0x1b30175c500cac00L
    .end annotation
.end field

.field private J8:I
    .annotation runtime Labcd/ru;
        field = 0x2495f0a63d985060L
    .end annotation
.end field

.field private Mr:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1cb3e32a05204c2dL
    .end annotation
.end field

.field private P8:Z
    .annotation runtime Labcd/ru;
        field = -0x3830dadb2001ccc5L
    .end annotation
.end field

.field private QX:I
    .annotation runtime Labcd/ru;
        field = -0x33221bca6ddb773dL
    .end annotation
.end field

.field private U2:I
    .annotation runtime Labcd/ru;
        field = -0xe19614820f4a36cL
    .end annotation
.end field

.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x4f71b45627499d58L
    .end annotation
.end field

.field private Ws:I
    .annotation runtime Labcd/ru;
        field = 0x2c67411109c228d5L
    .end annotation
.end field

.field private XL:I
    .annotation runtime Labcd/ru;
        field = 0x724a8d063fd5097L
    .end annotation
.end field

.field private Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1b321200ece7f85dL
    .end annotation
.end field

.field private a8:I
    .annotation runtime Labcd/ru;
        field = -0x1d37baedd0e76d34L
    .end annotation
.end field

.field private aM:I
    .annotation runtime Labcd/ru;
        field = -0x20b843b7bf3d267cL
    .end annotation
.end field

.field private er:Z
    .annotation runtime Labcd/ru;
        field = -0x3e5c0d70a48f1880L
    .end annotation
.end field

.field private gW:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2f353fba153ecc49L
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1bdb6cae0ce9f004L
    .end annotation
.end field

.field private j3:I
    .annotation runtime Labcd/ru;
        field = 0x164dbdb392233500L
    .end annotation
.end field

.field private lg:Z
    .annotation runtime Labcd/ru;
        field = 0x1d09afdebf272740L
    .end annotation
.end field

.field private rN:Z
    .annotation runtime Labcd/ru;
        field = -0x4370778d66c5aa81L
    .end annotation
.end field

.field private tp:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x12feea54ebf43ff5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x16d3fee5cb161ff0L
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x734a20bd63ad17L
    .end annotation
.end field

.field private vy:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2f8982e4ad18d599L
    .end annotation
.end field

.field private we:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x19a07e39ae0bd650L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private yS:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x26d72881a880fec8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x35332dcfed32160L
    .end annotation

    const-wide v8, 0xcb863f39b1e6ed3L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/aide/engine/SourceEntity;

    const-wide v2, -0x1236934121be4c50L    # -7.179995456406907E220

    const-wide v4, -0x1236934121be4c50L    # -7.179995456406907E220

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xcb863f39b1e6ed3L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/L;

    invoke-direct {v0}, Lcom/aide/engine/L;-><init>()V

    sput-object v0, Lcom/aide/engine/SourceEntity;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected constructor <init>(Labcd/La;Labcd/Aa;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0xde9fe5659c4b5dL
    .end annotation

    const-wide v4, 0xd66aae1b72a651bL

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v8, 0xd66aae1b72a651bL

    const/4 v2, 0x0

    invoke-static {v8, v9, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Labcd/Aa;->EQ()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->U2:I

    invoke-virtual {p2}, Labcd/Aa;->yS()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, p2

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->hz()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, p2

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->ko()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->FH:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    :goto_0
    invoke-virtual {p2}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    invoke-virtual {p2}, Labcd/Aa;->XL()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->a8:I

    move-object v0, p2

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-direct {p0, p1, v2}, Lcom/aide/engine/SourceEntity;->j6(Labcd/La;Labcd/Ia;)V

    invoke-direct {p0, p2}, Lcom/aide/engine/SourceEntity;->j6(Labcd/Aa;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, p2

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->et()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->Hw:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v2, :cond_3

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v3

    :cond_4
    :try_start_1
    sget-object v2, Lcom/aide/engine/SourceEntity$a;->DW:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Labcd/Aa;->yS()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v0, p2

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->oY()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v0, p2

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->XG()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->Ws:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    :goto_2
    invoke-virtual {p2}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->vJ()I

    move-result v2

    if-lez v2, :cond_f

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, p0, Lcom/aide/engine/SourceEntity;->EQ:Z

    invoke-virtual {p2}, Labcd/Aa;->XL()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->a8:I

    move-object v0, p2

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-direct {p0, p1, v2}, Lcom/aide/engine/SourceEntity;->j6(Labcd/La;Labcd/Ia;)V

    invoke-direct {p0, p2}, Lcom/aide/engine/SourceEntity;->j6(Labcd/Aa;)V

    goto :goto_1

    :cond_6
    move-object v0, p2

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->Ev()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->FH:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/aide/engine/SourceEntity$a;->j6:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Labcd/Aa;->rN()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->v5:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    move-object v0, p2

    check-cast v0, Labcd/ua;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/ua;->ye()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Labcd/ua;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/ua;->pO()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/engine/SourceEntity;->a8:I

    :goto_4
    move-object v0, p2

    check-cast v0, Labcd/ua;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/ua;->pO()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, p2

    check-cast v0, Labcd/ua;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/ua;->mb()Labcd/Na;

    :cond_9
    invoke-direct {p0, p2}, Lcom/aide/engine/SourceEntity;->j6(Labcd/Aa;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p2}, Labcd/Aa;->XL()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->a8:I

    goto :goto_4

    :cond_b
    invoke-virtual {p2}, Labcd/Aa;->P8()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->v5:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    move-object v0, p2

    check-cast v0, Labcd/Oa;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Oa;->aj()Labcd/ua;

    move-result-object v2

    invoke-virtual {p2}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    invoke-virtual {v2}, Labcd/ua;->pO()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    iput v3, p0, Lcom/aide/engine/SourceEntity;->a8:I

    :goto_5
    invoke-virtual {v2}, Labcd/ua;->pO()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Labcd/ua;->mb()Labcd/Na;

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v2}, Labcd/ua;->XL()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/SourceEntity;->a8:I

    goto :goto_5

    :cond_d
    invoke-virtual {p2}, Labcd/Aa;->vy()Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->VH:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {p2}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    sget-object v2, Lcom/aide/engine/SourceEntity$a;->Zo:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {p2}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_f
    move v2, v3

    goto/16 :goto_3
.end method

.method protected constructor <init>(Labcd/La;Labcd/Aa;I)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x89a380f20ae8694L
    .end annotation

    const-wide v8, -0xcc4313e00a702cL

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xcc4313e00a702cL

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    invoke-virtual {p2}, Labcd/Aa;->rN()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aide/engine/SourceEntity$a;->v5:Lcom/aide/engine/SourceEntity$a;

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {p2}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    invoke-virtual {p2}, Labcd/Aa;->j6()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/engine/SourceEntity;->a8:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Labcd/Aa;->XL()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/SourceEntity;->a8:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_3

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method protected constructor <init>(Labcd/La;Labcd/Aa;IIIIIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x467eb902b1ca520L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x32bdb77714695fc8L    # -1.5042659019156823E64

    const/4 v2, 0x0

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->Hw:Z

    iput p8, p0, Lcom/aide/engine/SourceEntity;->QX:I

    iput p9, p0, Lcom/aide/engine/SourceEntity;->XL:I

    iput p6, p0, Lcom/aide/engine/SourceEntity;->aM:I

    iput p7, p0, Lcom/aide/engine/SourceEntity;->j3:I

    iput p3, p0, Lcom/aide/engine/SourceEntity;->J0:I

    iput p4, p0, Lcom/aide/engine/SourceEntity;->J8:I

    iput p5, p0, Lcom/aide/engine/SourceEntity;->Ws:I

    return-void
.end method

.method protected constructor <init>(Labcd/La;Labcd/Aa;IIIIIIILjava/util/List;)V
    .registers 19
    .annotation runtime Labcd/su;
        method = 0x2a08c974606272c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/La;",
            "Labcd/Aa;",
            "IIIIIII",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    sget-boolean v2, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0xaf184060cb40aa0L    # -7.151914540934244E255

    const/4 v4, 0x0

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p8

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/16 v6, 0x8

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p9

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/16 v6, 0x9

    aput-object p10, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;IIIIIII)V

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->tp:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Labcd/La;Labcd/Aa;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1936de2f96671b4dL
    .end annotation

    const-wide v8, -0x7cc22f5ef56a153L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7cc22f5ef56a153L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iput-object p3, p0, Lcom/aide/engine/SourceEntity;->vy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method protected constructor <init>(Labcd/La;Labcd/Aa;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x234fe778d9b36ac0L
    .end annotation

    const-wide v8, 0x15b3beed00a8a78L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x15b3beed00a8a78L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iput-boolean p3, p0, Lcom/aide/engine/SourceEntity;->lg:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method protected constructor <init>(Labcd/La;Labcd/na;Ljava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1d9ba5bd622c0bd1L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/La;",
            "Labcd/na;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x306095f1f80ba7fL    # 4.31299530660905E-294

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x306095f1f80ba7fL    # 4.31299530660905E-294

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/aide/engine/SourceEntity$a;->EQ:Lcom/aide/engine/SourceEntity$a;

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    invoke-interface {p2}, Labcd/na;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/engine/SourceEntity;->tp:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private constructor <init>(Labcd/La;Ljava/lang/String;Labcd/Ya;I)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0xeae61eef4e7e31L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x5b1e53485bc95579L    # -4.980161015867447E-131

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/aide/engine/SourceEntity$a;->we:Lcom/aide/engine/SourceEntity$a;

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    iput-object p2, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    iput p4, p0, Lcom/aide/engine/SourceEntity;->a8:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x5b1e53485bc95579L    # -4.980161015867447E-131

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method protected constructor <init>(Labcd/La;Ljava/lang/String;ZIIIIIIILjava/util/List;)V
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x239b0ec585f13d8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/La;",
            "Ljava/lang/String;",
            "ZIIIIIII",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    sget-boolean v2, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x118010956696de80L    # -1.8469992033074908E224

    const/4 v4, 0x0

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p8

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/16 v6, 0x8

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p9

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/16 v6, 0x9

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/16 v6, 0xa

    aput-object p11, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->tp:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    :goto_0
    iput-object p2, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/engine/SourceEntity;->Hw:Z

    move/from16 v0, p9

    iput v0, p0, Lcom/aide/engine/SourceEntity;->QX:I

    move/from16 v0, p10

    iput v0, p0, Lcom/aide/engine/SourceEntity;->XL:I

    iput p7, p0, Lcom/aide/engine/SourceEntity;->aM:I

    move/from16 v0, p8

    iput v0, p0, Lcom/aide/engine/SourceEntity;->j3:I

    iput p4, p0, Lcom/aide/engine/SourceEntity;->J0:I

    iput p5, p0, Lcom/aide/engine/SourceEntity;->J8:I

    iput p6, p0, Lcom/aide/engine/SourceEntity;->Ws:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->tp:Ljava/util/List;

    return-void

    :cond_1
    sget-object v2, Lcom/aide/engine/SourceEntity$a;->u7:Lcom/aide/engine/SourceEntity$a;

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    goto :goto_0
.end method

.method protected constructor <init>(Labcd/La;Ljava/util/List;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x2cdc95711bf25c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/La;",
            "Ljava/util/List",
            "<",
            "Labcd/Za;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0x603552de7397118L    # -4.065390845808535E279

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x603552de7397118L    # -4.065390845808535E279

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/aide/engine/SourceEntity$a;->j6:Lcom/aide/engine/SourceEntity$a;

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->v5:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->VH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->gn:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->we:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Za;

    iget-object v5, p0, Lcom/aide/engine/SourceEntity;->we:Ljava/util/List;

    new-instance v6, Lcom/aide/engine/SourceEntity;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7, v0}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;ZLabcd/Za;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method protected constructor <init>(Labcd/La;ZLabcd/Aa;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x13375e2650f48fc0L
    .end annotation

    const-wide v8, -0x2a434d62cf919b8L    # -7.100364937638155E295

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x2a434d62cf919b8L    # -7.100364937638155E295

    const/4 v2, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iput-boolean p2, p0, Lcom/aide/engine/SourceEntity;->rN:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method protected constructor <init>(Labcd/La;ZLabcd/Za;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x310665019b6198e0L
    .end annotation

    const-wide v8, -0x164f4a1a693f478L    # -7.244579095860303E301

    const/4 v7, 0x0

    const-string v6, ""

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x164f4a1a693f478L    # -7.244579095860303E301

    const/4 v2, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/aide/engine/SourceEntity$a;->gn:Lcom/aide/engine/SourceEntity$a;

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    iput-boolean p2, p0, Lcom/aide/engine/SourceEntity;->rN:Z

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {p3}, Labcd/Za;->Hw()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    invoke-virtual {p3}, Labcd/Za;->DW()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->Mr:Ljava/lang/String;

    invoke-virtual {p3}, Labcd/Za;->Zo()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/SourceEntity;->J0:I

    invoke-virtual {p3}, Labcd/Za;->j6()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/SourceEntity;->Ws:I

    invoke-virtual {p3}, Labcd/Za;->VH()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/SourceEntity;->J8:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->Hw:Z

    invoke-virtual {p3}, Labcd/Za;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->gn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->VH:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->v5:Z

    invoke-virtual {p3}, Labcd/Za;->gn()Labcd/Ya;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Labcd/Za;->gn()Labcd/Ya;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method

.method public constructor <init>(Labcd/ea;Labcd/Da;)V
    .registers 10

    const-wide v2, -0x1639c5d7b63cad93L    # -3.4027608645038843E201

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1639c5d7b63cad93L    # -3.4027608645038843E201

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/aide/engine/SourceEntity$a;->QX:Lcom/aide/engine/SourceEntity$a;

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {p2}, Labcd/Da;->tp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/aide/engine/SourceEntity;->J0:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/aide/engine/SourceEntity;->J8:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/aide/engine/SourceEntity;->Ws:I

    invoke-virtual {p2}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->Mr:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->Hw:Z

    invoke-virtual {p2}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v0

    iget-object v1, p1, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {p2}, Labcd/Da;->FH()I

    move-result v5

    invoke-virtual {v1, v5}, Labcd/Ea;->j6(I)Labcd/Da;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Da;->j6(Labcd/Da;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->gW:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    const-wide v6, 0x1d762b61392bf62fL    # 9.398907467410837E-167

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x1d762b61392bf62fL    # 9.398907467410837E-167

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/aide/engine/SourceEntity$a;->values()[Lcom/aide/engine/SourceEntity$a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/aide/engine/SourceEntity;->Hw:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/aide/engine/SourceEntity;->v5:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->vy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->VH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->gn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/aide/engine/SourceEntity;->EQ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/aide/engine/SourceEntity;->P8:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->J0:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->J8:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->Ws:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->QX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->XL:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->aM:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->j3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->Mr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/SourceEntity;->U2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lcom/aide/engine/SourceEntity;->lg:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_5
    iput-boolean v2, p0, Lcom/aide/engine/SourceEntity;->rN:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    :goto_6
    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->er:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->yS:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->gW:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->BT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    move v2, v1

    goto/16 :goto_0

    :cond_2
    move v2, v1

    goto/16 :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    move v2, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_8

    invoke-static {v0, v6, v7, v5, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x131f1160689a443L
    .end annotation

    const-wide v4, -0x496e23eaeae453bL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x496e23eaeae453bL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/aide/engine/SourceEntity$a;->J0:Lcom/aide/engine/SourceEntity$a;

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    iput-object p1, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->v5:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->VH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<code><b><font color=\"#2A50D0\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</font></b></code>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->gn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x14d5be3206ab40L
    .end annotation

    const-wide v2, 0x148bd22f127df670L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, 0x148bd22f127df670L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/aide/engine/SourceEntity$a;->J8:Lcom/aide/engine/SourceEntity$a;

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    iput-object p1, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Labcd/Ea;Labcd/Ba;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x62174fedc00dd78L
    .end annotation

    const-wide v2, 0x16a8f34fe788c60L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16a8f34fe788c60L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/SourceEntity;->U2:I

    invoke-virtual {p2, v0}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->P8()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Labcd/Oa;

    invoke-virtual {v0}, Labcd/Oa;->aj()Labcd/ua;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Labcd/Aa;->u7()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->gn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Labcd/Aa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xac59ceb092cea57L
    .end annotation

    const-wide v2, 0x196d60e6f082b15bL    # 3.376001751444424E-186

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x196d60e6f082b15bL    # 3.376001751444424E-186

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Aa;->tp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->BT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Labcd/La;Labcd/Ia;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2358db3a94ae478L
    .end annotation

    const-wide v2, -0x207341b90bb23ea8L    # -1.8817590127438492E152

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x207341b90bb23ea8L    # -1.8817590127438492E152

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {p2}, Labcd/Ia;->oY()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Labcd/Ia;->vJ()I

    move-result v1

    if-ge v0, v1, :cond_3

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Labcd/Ia;->gn(I)Labcd/Ya;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {p2, v0}, Labcd/Ia;->v5(I)I

    move-result v5

    invoke-virtual {v4, v5}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :try_start_4
    invoke-virtual {p2}, Labcd/Ia;->ca()Labcd/Ya;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ya;->dx()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/Ia;->ca()Labcd/Ya;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;
    :try_end_4
    .catch Labcd/jc; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_2
    return-void

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x508d18df5f3fb4f9L    # -3.985549959426046E-80

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->Mr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x508d18df5f3fb4f9L    # -3.985549959426046E-80

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public DW(Labcd/La;)V
    .registers 6

    const-wide v2, 0x1a5cc7efe8a0fcL

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1a5cc7efe8a0fcL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aide/engine/SourceEntity;->j6(Labcd/La;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->P8:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->lg:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected DW(Labcd/La;Labcd/Ya;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x5b646873c719a01L
    .end annotation

    const-wide v4, 0x13fdbc0425f6446bL

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x13fdbc0425f6446bL

    invoke-static {v2, v3, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p1, Labcd/La;->a8:Labcd/Ba;

    iget v3, p0, Lcom/aide/engine/SourceEntity;->U2:I

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Aa;->yS()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->hz()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {p2}, Labcd/Aa;->lg()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v3}, Labcd/Aa;->Zo()Labcd/Da;

    move-result-object v6

    invoke-virtual {v3}, Labcd/Aa;->QX()Labcd/na;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Labcd/Ba;->v5(Labcd/Da;Labcd/na;)Labcd/ua;
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Labcd/Aa;->gW()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Labcd/Ya;->sh()Labcd/Ya;
    :try_end_2
    .catch Labcd/jc; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p2

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p2}, Labcd/Aa;->nw()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v3}, Labcd/Aa;->Zo()Labcd/Da;

    move-result-object v6

    invoke-virtual {v3}, Labcd/Aa;->QX()Labcd/na;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Labcd/Ba;->v5(Labcd/Da;Labcd/na;)Labcd/ua;
    :try_end_3
    .catch Labcd/jc; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {p2}, Labcd/Aa;->ei()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Labcd/Ya;->sh()Labcd/Ya;
    :try_end_4
    .catch Labcd/jc; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object p2

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-virtual {v3}, Labcd/Aa;->yS()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->oY()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result v2

    if-eqz v2, :cond_9

    :try_start_6
    invoke-virtual {p2}, Labcd/Aa;->lg()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v3}, Labcd/Aa;->Zo()Labcd/Da;

    move-result-object v6

    invoke-virtual {v3}, Labcd/Aa;->QX()Labcd/na;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Labcd/Ba;->v5(Labcd/Da;Labcd/na;)Labcd/ua;
    :try_end_6
    .catch Labcd/jc; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object p2

    :cond_5
    :goto_2
    :try_start_7
    invoke-virtual {p2}, Labcd/Aa;->gW()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Labcd/Ya;->sh()Labcd/Ya;
    :try_end_7
    .catch Labcd/jc; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object p2

    goto :goto_2

    :cond_6
    :try_start_8
    invoke-virtual {p2}, Labcd/Aa;->nw()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v3}, Labcd/Aa;->Zo()Labcd/Da;

    move-result-object v6

    invoke-virtual {v3}, Labcd/Aa;->QX()Labcd/na;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Labcd/Ba;->v5(Labcd/Da;Labcd/na;)Labcd/ua;
    :try_end_8
    .catch Labcd/jc; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object p2

    goto :goto_2

    :cond_7
    :goto_3
    :try_start_9
    invoke-virtual {p2}, Labcd/Aa;->ei()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Labcd/Ya;->sh()Labcd/Ya;
    :try_end_9
    .catch Labcd/jc; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object p2

    goto :goto_3

    :catch_0
    move-exception v3

    move-object v8, p2

    :goto_4
    sget-boolean v2, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v2, :cond_8

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v3

    :catch_1
    move-exception v2

    :cond_9
    return-void

    :catch_2
    move-exception v3

    move-object v8, p2

    goto :goto_4
.end method

.method public EQ()Lcom/aide/engine/SourceEntity$a;
    .registers 5

    const-wide v2, -0x1bf9750d4247ef19L    # -6.969389340880678E173

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1bf9750d4247ef19L    # -6.969389340880678E173

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected FH()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x26821a68fa00f05bL
    .end annotation

    const-wide v2, -0x2c3f1c7d446b5de7L    # -2.818286972332035E95

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2c3f1c7d446b5de7L    # -2.818286972332035E95

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/SourceEntity;->U2:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 7

    const-wide v4, -0x2b495c372c0230f0L    # -1.2379720522380552E100

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2b495c372c0230f0L    # -1.2379720522380552E100

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/engine/SourceEntity;->EQ()Lcom/aide/engine/SourceEntity$a;

    move-result-object v1

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->j6:Lcom/aide/engine/SourceEntity$a;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/aide/engine/SourceEntity;->Ws()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public J0()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x1935d8875bf20210L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1935d8875bf20210L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->gW:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x5982bd82b7351233L    # 1.54854639783558E123

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5982bd82b7351233L    # 1.54854639783558E123

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public QX()Z
    .registers 5

    const-wide v2, -0x399bc495895ac00L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x399bc495895ac00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/engine/SourceEntity;->rN:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x1af8c8c13850dce7L    # 9.556469092958773E-179

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1af8c8c13850dce7L    # 9.556469092958773E-179

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->BT:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->BT:Ljava/lang/String;

    const-string v1, "java/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->BT:Ljava/lang/String;

    const-string v1, "javax/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->BT:Ljava/lang/String;

    const-string v1, "org/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->BT:Ljava/lang/String;

    const-string v1, "android/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->BT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public Ws()Z
    .registers 5

    const-wide v2, -0x37497a18f8c3f891L    # -1.962034934529848E42

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x37497a18f8c3f891L    # -1.962034934529848E42

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/engine/SourceEntity;->EQ:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public XL()Z
    .registers 5

    const-wide v2, 0x170c2c2a1bdd1c85L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x170c2c2a1bdd1c85L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/engine/SourceEntity;->lg:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x37fd1525fa815875L    # -8.046567484690465E38

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x37fd1525fa815875L    # -8.046567484690465E38

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->yS:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public aM()Z
    .registers 5

    const-wide v2, -0xe5c5bede81bed6fL    # -2.5579260134952477E239

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe5c5bede81bed6fL    # -2.5579260134952477E239

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/engine/SourceEntity;->er:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public describeContents()I
    .registers 5

    const-wide v2, -0x4ef5944103936cb0L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4ef5944103936cb0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const-wide v6, -0x2fb06912b2ee4d1L    # -1.674457920417344E294

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v4, -0x2fb06912b2ee4d1L    # -1.674457920417344E294

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Lcom/aide/engine/SourceEntity;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget v2, p0, Lcom/aide/engine/SourceEntity;->U2:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    iget v4, p0, Lcom/aide/engine/SourceEntity;->U2:I

    move-object v0, p1

    check-cast v0, Lcom/aide/engine/SourceEntity;

    move-object v2, v0

    iget v2, v2, Lcom/aide/engine/SourceEntity;->U2:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v3, :cond_3

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v2
.end method

.method public gn()I
    .registers 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x514736f83b49fa73L    # -1.2758362933385617E-83

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/SourceEntity;->Ws:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x514736f83b49fa73L    # -1.2758362933385617E-83

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j3()Z
    .registers 5

    const-wide v2, -0x53e7117fdd266b10L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x53e7117fdd266b10L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/engine/SourceEntity;->P8:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x306e0c324ea98134L    # -2.0300204754193366E75

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x306e0c324ea98134L    # -2.0300204754193366E75

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->er:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6(Labcd/Ea;Labcd/Va;Labcd/Ba;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xa96dcd4be7de5d7L
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14e09eefbe6063bdL    # -1.0074378424355773E208

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/SourceEntity;->U2:I

    invoke-virtual {p3, v0}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/Aa;->P8()Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast v0, Labcd/Oa;

    invoke-virtual {v0}, Labcd/Oa;->aj()Labcd/ua;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Labcd/Aa;->vy()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->v5:Z

    invoke-direct {p0, p1, p3}, Lcom/aide/engine/SourceEntity;->j6(Labcd/Ea;Labcd/Ba;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->gn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->VH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->v5:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/SourceEntity;->Hw:Z

    invoke-direct {p0, p1, p3}, Lcom/aide/engine/SourceEntity;->j6(Labcd/Ea;Labcd/Ba;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->gn:Ljava/lang/String;

    invoke-virtual {v1}, Labcd/Aa;->gn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->VH:Ljava/lang/String;

    invoke-virtual {v1}, Labcd/Aa;->Zo()Labcd/Da;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_2
    :try_start_2
    iput-object v0, p0, Lcom/aide/engine/SourceEntity;->Mr:Ljava/lang/String;

    invoke-virtual {v1}, Labcd/Aa;->J8()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/SourceEntity;->J0:I

    invoke-virtual {v1}, Labcd/Aa;->Ws()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/SourceEntity;->J8:I

    invoke-virtual {v1}, Labcd/Aa;->J0()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/SourceEntity;->Ws:I

    invoke-virtual {v1}, Labcd/Aa;->v5()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/SourceEntity;->QX:I

    invoke-virtual {v1}, Labcd/Aa;->Hw()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/SourceEntity;->XL:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, -0x14e09eefbe6063bdL    # -1.0074378424355773E208

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_4
    invoke-virtual {v0}, Labcd/Da;->XL()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method protected j6(Labcd/La;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x149a48f1e7b0f370L
    .end annotation

    const-wide v6, 0xa711b9dfa102618L

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0xa711b9dfa102618L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p1, Labcd/La;->a8:Labcd/Ba;

    iget v3, p0, Lcom/aide/engine/SourceEntity;->U2:I

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Aa;->yS()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->hz()Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v3, Labcd/Ia;

    invoke-virtual {v3}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/SourceEntity;->yS:Ljava/lang/String;

    invoke-virtual {v2}, Labcd/Aa;->Zo()Labcd/Da;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Labcd/Aa;->Zo()Labcd/Da;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Da;->VH()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".js"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Labcd/Aa;->Zo()Labcd/Da;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Da;->tp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->yS:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v3}, Labcd/Aa;->yS()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->oY()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->XG()Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast v3, Labcd/Ia;

    invoke-virtual {v3}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ua;->pO()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Labcd/ua;->mb()Labcd/Na;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v3, :cond_3

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v2

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Labcd/ua;->FH()Labcd/ua;

    move-result-object v2

    goto :goto_0

    :cond_5
    check-cast v3, Labcd/Ia;

    invoke-virtual {v3}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v2

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Labcd/Aa;->rN()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v3

    check-cast v0, Labcd/ua;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/ua;->pO()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v3}, Labcd/Aa;->FH()Labcd/ua;

    move-result-object v2

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Labcd/Aa;->rN()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v3

    check-cast v0, Labcd/ua;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/ua;->pO()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v3, Labcd/ua;

    invoke-virtual {v3}, Labcd/ua;->mb()Labcd/Na;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected j6(Labcd/La;Labcd/Ya;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xfb6b32f05b22c0dL
    .end annotation

    const-wide v4, 0x6beaac19236f8619L    # 7.0149852470899365E211

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x6beaac19236f8619L    # 7.0149852470899365E211

    invoke-static {v2, v3, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p1, Labcd/La;->a8:Labcd/Ba;

    iget v3, p0, Lcom/aide/engine/SourceEntity;->U2:I

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Aa;->yS()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->oY()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Labcd/Aa;->gW()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Labcd/Ya;->sh()Labcd/Ya;

    move-result-object p2

    :cond_1
    invoke-virtual {p2}, Labcd/Aa;->ei()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Labcd/Ya;->sh()Labcd/Ya;
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p2

    :cond_2
    :goto_0
    :try_start_2
    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->vJ()I

    move-result v9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/aide/engine/SourceEntity;->we:Ljava/util/List;

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->Eq()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v8, v2

    :goto_1
    if-ge v8, v9, :cond_7

    iget-object v7, p1, Labcd/La;->j3:Labcd/Ga;

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2, v8}, Labcd/Ia;->v5(I)I

    move-result v2

    invoke-virtual {v7, v2}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v10

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2, v8}, Labcd/Ia;->VH(I)I

    move-result v7

    add-int/lit8 v2, v9, -0x1

    if-ne v8, v2, :cond_3

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->OW()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/Ia;->sG()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_3

    const/high16 v2, 0x400000

    or-int/2addr v2, v7

    move v7, v2

    :cond_3
    if-eqz p2, :cond_5

    :try_start_3
    move-object v0, v3

    check-cast v0, Labcd/Ia;

    move-object v2, v0

    invoke-virtual {v2, p2, v8}, Labcd/Ia;->FH(Labcd/Ya;I)Labcd/Ya;

    move-result-object v2

    :goto_2
    iget-object v11, p0, Lcom/aide/engine/SourceEntity;->we:Ljava/util/List;

    new-instance v12, Lcom/aide/engine/SourceEntity;

    invoke-direct {v12, p1, v10, v2, v7}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Ljava/lang/String;Labcd/Ya;I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Labcd/jc; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    :cond_4
    move v8, v7

    goto :goto_1

    :cond_5
    move-object v2, v6

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    iget-object v2, p0, Lcom/aide/engine/SourceEntity;->we:Ljava/util/List;

    new-instance v7, Lcom/aide/engine/SourceEntity;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v7, p1, v10, v11, v12}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Ljava/lang/String;Labcd/Ya;I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v8, p2

    sget-boolean v2, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v2, :cond_6

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v3

    :cond_7
    return-void

    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x1625608d19768a17L    # -8.151388801020084E201

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1625608d19768a17L    # -8.151388801020084E201

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()I
    .registers 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x57f427c36f987c8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/SourceEntity;->J8:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x57f427c36f987c8L

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u7()I
    .registers 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x39f90a8db9fdba74L    # 1.9754043480659713E-29

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/SourceEntity;->J0:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x39f90a8db9fdba74L    # 1.9754043480659713E-29

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x21bcd40ad01bd06bL    # -1.1969851584827656E146

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x21bcd40ad01bd06bL    # -1.1969851584827656E146

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->vy:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->vy:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/aide/engine/SourceEntity;->Hw()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public we()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x1f100dc989bafd2bL    # -8.772152452557034E158

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f100dc989bafd2bL    # -8.772152452557034E158

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 11

    const-wide v2, -0x341b8b693103c759L    # -4.012524719364016E57

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v4, Lcom/aide/engine/SourceEntity;->j6:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x341b8b693103c759L    # -4.012524719364016E57

    invoke-static {v6, v7, p0, p1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->FH:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Lcom/aide/engine/SourceEntity;->Hw:Z

    if-eqz v4, :cond_1

    move v4, v0

    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Lcom/aide/engine/SourceEntity;->v5:Z

    if-eqz v4, :cond_2

    move v4, v0

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->Zo:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->vy:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->VH:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->gn:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->u7:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/aide/engine/SourceEntity;->EQ:Z

    if-eqz v4, :cond_3

    move v4, v0

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Lcom/aide/engine/SourceEntity;->P8:Z

    if-eqz v4, :cond_4

    move v4, v0

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/aide/engine/SourceEntity;->J0:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/aide/engine/SourceEntity;->J8:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/aide/engine/SourceEntity;->Ws:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/aide/engine/SourceEntity;->QX:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/aide/engine/SourceEntity;->XL:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/aide/engine/SourceEntity;->aM:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/aide/engine/SourceEntity;->j3:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/aide/engine/SourceEntity;->Mr:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, p0, Lcom/aide/engine/SourceEntity;->U2:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Lcom/aide/engine/SourceEntity;->lg:Z

    if-eqz v4, :cond_5

    move v4, v0

    :goto_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Lcom/aide/engine/SourceEntity;->rN:Z

    if-eqz v4, :cond_6

    move v4, v0

    :goto_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Lcom/aide/engine/SourceEntity;->er:Z

    if-eqz v4, :cond_7

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->yS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->gW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/SourceEntity;->BT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    move v4, v1

    goto/16 :goto_0

    :cond_2
    move v4, v1

    goto/16 :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity;->DW:Z

    if-eqz v0, :cond_8

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1
.end method
