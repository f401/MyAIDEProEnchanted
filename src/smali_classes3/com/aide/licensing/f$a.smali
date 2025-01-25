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
        "Ljava/lang/Enum<",
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
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x101d113bab96f833L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2474467140434ed8L  # -9.83959144816427E132

    :try_start_6
    const-class v3, Lcom/aide/licensing/f$a;

    const-wide v4, 0xc7d5ce5ceecf75cL

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/licensing/f$a;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/licensing/f$a;

    const-string v4, "LICENSED"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/aide/licensing/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aide/licensing/f$a;->j6:Lcom/aide/licensing/f$a;

    new-instance v4, Lcom/aide/licensing/f$a;

    const-string v6, "IN_GRACE_PERIOD"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/aide/licensing/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/aide/licensing/f$a;->DW:Lcom/aide/licensing/f$a;

    new-instance v6, Lcom/aide/licensing/f$a;

    const-string v8, "OVER_GRACE_PERIOD"

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Lcom/aide/licensing/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/aide/licensing/f$a;->FH:Lcom/aide/licensing/f$a;

    new-instance v8, Lcom/aide/licensing/f$a;

    const-string v10, "NOT_LICENSED"

    const/4 v11, 0x3

    invoke-direct {v8, v10, v11}, Lcom/aide/licensing/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    new-instance v10, Lcom/aide/licensing/f$a;

    const-string v12, "TEMPORARY_ERROR"

    const/4 v13, 0x4

    invoke-direct {v10, v12, v13}, Lcom/aide/licensing/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/aide/licensing/f$a;->v5:Lcom/aide/licensing/f$a;

    const/4 v12, 0x5

    new-array v12, v12, [Lcom/aide/licensing/f$a;

    aput-object v3, v12, v5

    aput-object v4, v12, v7

    aput-object v6, v12, v9

    aput-object v8, v12, v11

    aput-object v10, v12, v13

    sput-object v12, Lcom/aide/licensing/f$a;->Zo:[Lcom/aide/licensing/f$a;
    :try_end_58
    .catchall {:try_start_6 .. :try_end_58} :catchall_59

    return-void

    :catchall_59
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/f$a;->gn:Z

    if-eqz v4, :cond_61

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_61
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x58d51def0b45cbffL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/f$a;->VH:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3be95abacf5ba070L  # -1.0443433697344933E20

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/f$a;->gn:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x3be95abacf5ba070L  # -1.0443433697344933E20

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/licensing/f$a;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1beee3b339898e0L

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/f$a;->VH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Lcom/aide/licensing/f$a;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/aide/licensing/f$a;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/f$a;->gn:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Lcom/aide/licensing/f$a;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x2b802fe1920104cL  # -3.064117542047035E295

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/f$a;->VH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/licensing/f$a;->Zo:[Lcom/aide/licensing/f$a;

    invoke-virtual {v3}, [Lcom/aide/licensing/f$a;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/aide/licensing/f$a;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/f$a;->gn:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
