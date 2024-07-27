.class public final enum Lcom/aide/licensing/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/licensing/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aide/licensing/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/licensing/f$a;

.field public static final enum FH:Lcom/aide/licensing/f$a;

.field public static final enum Hw:Lcom/aide/licensing/f$a;

.field private static VH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static final Zo:[Lcom/aide/licensing/f$a;

.field private static gn:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum j6:Lcom/aide/licensing/f$a;

.field public static final enum v5:Lcom/aide/licensing/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x101d113bab96f833L
    .end annotation

    :try_start_0
    const-class v0, Lcom/aide/licensing/f$a;

    const-wide v2, 0xc7d5ce5ceecf75cL

    const-wide v4, 0xc7d5ce5ceecf75cL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/licensing/f$a;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2474467140434ed8L    # -9.83959144816427E132

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/licensing/f$a;

    const-string v1, "LICENSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/licensing/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/licensing/f$a;->j6:Lcom/aide/licensing/f$a;

    new-instance v0, Lcom/aide/licensing/f$a;

    const-string v1, "IN_GRACE_PERIOD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aide/licensing/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/licensing/f$a;->DW:Lcom/aide/licensing/f$a;

    new-instance v0, Lcom/aide/licensing/f$a;

    const-string v1, "OVER_GRACE_PERIOD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/aide/licensing/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/licensing/f$a;->FH:Lcom/aide/licensing/f$a;

    new-instance v0, Lcom/aide/licensing/f$a;

    const-string v1, "NOT_LICENSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/aide/licensing/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    new-instance v0, Lcom/aide/licensing/f$a;

    const-string v1, "TEMPORARY_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/aide/licensing/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/licensing/f$a;->v5:Lcom/aide/licensing/f$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/aide/licensing/f$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/licensing/f$a;->j6:Lcom/aide/licensing/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/licensing/f$a;->DW:Lcom/aide/licensing/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/aide/licensing/f$a;->FH:Lcom/aide/licensing/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/aide/licensing/f$a;->v5:Lcom/aide/licensing/f$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/licensing/f$a;->Zo:[Lcom/aide/licensing/f$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/f$a;->gn:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x2474467140434ed8L    # -9.83959144816427E132

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x58d51def0b45cbffL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, -0x3be95abacf5ba070L    # -1.0443433697344933E20

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/f$a;->VH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x3be95abacf5ba070L    # -1.0443433697344933E20

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/licensing/f$a;->gn:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/licensing/f$a;
    .registers 7

    const-wide v4, 0x1beee3b339898e0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/f$a;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1beee3b339898e0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/licensing/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/licensing/f$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/f$a;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/licensing/f$a;
    .registers 6

    const-wide v4, -0x2b802fe1920104cL    # -3.064117542047035E295

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/f$a;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2b802fe1920104cL    # -3.064117542047035E295

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/licensing/f$a;->Zo:[Lcom/aide/licensing/f$a;

    invoke-virtual {v0}, [Lcom/aide/licensing/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/licensing/f$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/f$a;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
