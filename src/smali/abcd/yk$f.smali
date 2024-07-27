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
        "Ljava/lang/Enum",
        "<",
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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1b13e44373958da9L
    .end annotation

    :try_start_0
    const-class v0, Labcd/yk$f;

    const-wide v2, 0x42446de3be283bfL

    const-wide v4, 0x42446de3be283bfL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/yk$f;->EQ:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11ac2ab524032a61L    # -2.8676689328782097E223

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/yk$f;

    const-string v1, "RESULT_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$f;->j6:Labcd/yk$f;

    new-instance v0, Labcd/yk$f;

    const-string v1, "RESULT_USER_CANCELED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$f;->DW:Labcd/yk$f;

    new-instance v0, Labcd/yk$f;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$f;->FH:Labcd/yk$f;

    new-instance v0, Labcd/yk$f;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$f;->Hw:Labcd/yk$f;

    new-instance v0, Labcd/yk$f;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$f;->v5:Labcd/yk$f;

    new-instance v0, Labcd/yk$f;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$f;->Zo:Labcd/yk$f;

    new-instance v0, Labcd/yk$f;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$f;->VH:Labcd/yk$f;

    new-instance v0, Labcd/yk$f;

    const-string v1, "RESULT_ITEM_ALREADY_OWNED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$f;->gn:Labcd/yk$f;

    new-instance v0, Labcd/yk$f;

    const-string v1, "RESULT_ITEM_NOT_OWNED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Labcd/yk$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$f;->u7:Labcd/yk$f;

    const/16 v0, 0x9

    new-array v0, v0, [Labcd/yk$f;

    const/4 v1, 0x0

    sget-object v2, Labcd/yk$f;->j6:Labcd/yk$f;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Labcd/yk$f;->DW:Labcd/yk$f;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Labcd/yk$f;->FH:Labcd/yk$f;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Labcd/yk$f;->Hw:Labcd/yk$f;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Labcd/yk$f;->v5:Labcd/yk$f;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Labcd/yk$f;->Zo:Labcd/yk$f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Labcd/yk$f;->VH:Labcd/yk$f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Labcd/yk$f;->gn:Labcd/yk$f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Labcd/yk$f;->u7:Labcd/yk$f;

    aput-object v2, v0, v1

    sput-object v0, Labcd/yk$f;->tp:[Labcd/yk$f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yk$f;->we:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x11ac2ab524032a61L    # -2.8676689328782097E223

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x31d77d12c75dd5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, -0x17b2e1826e5e58e0L    # -2.6570836137840016E194

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$f;->EQ:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x17b2e1826e5e58e0L    # -2.6570836137840016E194

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/yk$f;->we:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static DW(I)Labcd/yk$f;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x842c150ee8d023fL
    .end annotation

    const-wide v4, 0xc307be78abff78L    # 5.419995141918018E-305

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$f;->EQ:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc307be78abff78L    # 5.419995141918018E-305

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-static {}, Labcd/yk$f;->values()[Labcd/yk$f;

    move-result-object v0

    if-ltz p0, :cond_1

    array-length v1, v0

    if-lt p0, v1, :cond_2

    :cond_1
    sget-object v0, Labcd/yk$f;->VH:Labcd/yk$f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_2
    aget-object v0, v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yk$f;->we:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method static synthetic j6(I)Labcd/yk$f;
    .registers 2

    invoke-static {p0}, Labcd/yk$f;->DW(I)Labcd/yk$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/yk$f;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5f0aa23a0f985d0L
    .end annotation

    const-wide v4, 0x146704d31b8ce33L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$f;->EQ:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x146704d31b8ce33L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Labcd/yk$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/yk$f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yk$f;->we:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Labcd/yk$f;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2d89378c9b6b4e3cL
    .end annotation

    const-wide v4, -0x26c4750dc0dbd4fL    # -8.061093856964976E296

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$f;->EQ:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x26c4750dc0dbd4fL    # -8.061093856964976E296

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/yk$f;->tp:[Labcd/yk$f;

    invoke-virtual {v0}, [Labcd/yk$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/yk$f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yk$f;->we:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
