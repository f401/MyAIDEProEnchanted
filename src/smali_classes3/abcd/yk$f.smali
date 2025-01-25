.class final enum Labcd/yk$f;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/yk$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/yk$f;
    .annotation runtime Labcd/ru;
        field = -0x173c93690de5ceacL
    .end annotation
.end field

.field private static EQ:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum FH:Labcd/yk$f;
    .annotation runtime Labcd/ru;
        field = -0x3359687e64928cfL
    .end annotation
.end field

.field public static final enum Hw:Labcd/yk$f;
    .annotation runtime Labcd/ru;
        field = -0xa48b0055fd1929dL
    .end annotation
.end field

.field public static final enum VH:Labcd/yk$f;
    .annotation runtime Labcd/ru;
        field = 0x1a5bcacf1dd81cf9L
    .end annotation
.end field

.field public static final enum Zo:Labcd/yk$f;
    .annotation runtime Labcd/ru;
        field = 0x725c7d1e6af4a00L
    .end annotation
.end field

.field public static final enum gn:Labcd/yk$f;
    .annotation runtime Labcd/ru;
        field = 0x5bd169785a30d9L
    .end annotation
.end field

.field public static final enum j6:Labcd/yk$f;
    .annotation runtime Labcd/ru;
        field = 0xc45a40570c13381L
    .end annotation
.end field

.field private static final tp:[Labcd/yk$f;

.field public static final enum u7:Labcd/yk$f;
    .annotation runtime Labcd/ru;
        field = -0x3d68b1415a6868L
    .end annotation
.end field

.field public static final enum v5:Labcd/yk$f;
    .annotation runtime Labcd/ru;
        field = -0x5233dd580f74962fL
    .end annotation
.end field

.field private static we:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x1b13e44373958da9L
    .end annotation

    const/4 v1, 0x0

    const-wide v2, -0x11ac2ab524032a61L  # -2.8676689328782097E223

    :try_start_6
    const-class v0, Labcd/yk$f;

    const-wide v4, 0x42446de3be283bfL

    invoke-static {v0, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/yk$f;->EQ:Z

    if-eqz v0, :cond_17

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v0, Labcd/yk$f;

    const-string v4, "RESULT_OK"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$f;->j6:Labcd/yk$f;

    new-instance v4, Labcd/yk$f;

    const-string v6, "RESULT_USER_CANCELED"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/yk$f;->DW:Labcd/yk$f;

    new-instance v6, Labcd/yk$f;

    const-string v8, "RESULT_SERVICE_UNAVAILABLE"

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v6, Labcd/yk$f;->FH:Labcd/yk$f;

    new-instance v8, Labcd/yk$f;

    const-string v10, "RESULT_BILLING_UNAVAILABLE"

    const/4 v11, 0x3

    invoke-direct {v8, v10, v11}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v8, Labcd/yk$f;->Hw:Labcd/yk$f;

    new-instance v10, Labcd/yk$f;

    const-string v12, "RESULT_ITEM_UNAVAILABLE"

    const/4 v13, 0x4

    invoke-direct {v10, v12, v13}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v10, Labcd/yk$f;->v5:Labcd/yk$f;

    new-instance v12, Labcd/yk$f;

    const-string v14, "RESULT_DEVELOPER_ERROR"

    const/4 v15, 0x5

    invoke-direct {v12, v14, v15}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v12, Labcd/yk$f;->Zo:Labcd/yk$f;

    new-instance v14, Labcd/yk$f;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v14, v1, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v14, Labcd/yk$f;->VH:Labcd/yk$f;

    new-instance v1, Labcd/yk$f;

    const-string v3, "RESULT_ITEM_ALREADY_OWNED"

    const/4 v2, 0x7

    invoke-direct {v1, v3, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/yk$f;->gn:Labcd/yk$f;

    new-instance v3, Labcd/yk$f;

    const-string v2, "RESULT_ITEM_NOT_OWNED"

    const/16 v15, 0x8

    invoke-direct {v3, v2, v15}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/yk$f;->u7:Labcd/yk$f;

    const/16 v2, 0x9

    new-array v2, v2, [Labcd/yk$f;

    aput-object v0, v2, v5

    aput-object v4, v2, v7

    aput-object v6, v2, v9

    aput-object v8, v2, v11

    aput-object v10, v2, v13

    const/4 v0, 0x5

    aput-object v12, v2, v0

    const/4 v0, 0x6

    aput-object v14, v2, v0

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-object v3, v2, v15

    sput-object v2, Labcd/yk$f;->tp:[Labcd/yk$f;
    :try_end_8d
    .catchall {:try_start_6 .. :try_end_8d} :catchall_8e

    return-void

    :catchall_8e
    move-exception v0

    sget-boolean v1, Labcd/yk$f;->we:Z

    if-eqz v1, :cond_9c

    const/4 v1, 0x0

    const-wide v2, -0x11ac2ab524032a61L  # -2.8676689328782097E223

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_9c
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x31d77d12c75dd5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/yk$f;->EQ:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x17b2e1826e5e58e0L  # -2.6570836137840016E194

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Labcd/yk$f;->we:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x17b2e1826e5e58e0L  # -2.6570836137840016E194

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method private static DW(I)Labcd/yk$f;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x842c150ee8d023fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xc307be78abff78L  # 5.419995141918018E-305

    :try_start_6
    sget-boolean v3, Labcd/yk$f;->EQ:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-static {}, Labcd/yk$f;->values()[Labcd/yk$f;

    move-result-object v3

    if-ltz p0, :cond_1a

    array-length v4, v3
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1d

    if-lt p0, v4, :cond_17

    goto :goto_1a

    :cond_17
    aget-object p0, v3, p0

    return-object p0

    :cond_1a
    :goto_1a
    :try_start_1a
    sget-object p0, Labcd/yk$f;->VH:Labcd/yk$f;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1d

    return-object p0

    :catchall_1d
    move-exception v3

    sget-boolean v4, Labcd/yk$f;->we:Z

    if-eqz v4, :cond_2a

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method static synthetic j6(I)Labcd/yk$f;
    .registers 1

    invoke-static {p0}, Labcd/yk$f;->DW(I)Labcd/yk$f;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/yk$f;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5f0aa23a0f985d0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x146704d31b8ce33L

    :try_start_6
    sget-boolean v3, Labcd/yk$f;->EQ:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Labcd/yk$f;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Labcd/yk$f;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/yk$f;->we:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Labcd/yk$f;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2d89378c9b6b4e3cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x26c4750dc0dbd4fL  # -8.061093856964976E296

    :try_start_6
    sget-boolean v3, Labcd/yk$f;->EQ:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/yk$f;->tp:[Labcd/yk$f;

    invoke-virtual {v3}, [Labcd/yk$f;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Labcd/yk$f;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/yk$f;->we:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
