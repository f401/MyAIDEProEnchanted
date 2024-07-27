.class public final enum Lcom/aide/ui/build/android/Q$a;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/android/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aide/ui/build/android/Q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/ui/build/android/Q$a;

.field public static final enum FH:Lcom/aide/ui/build/android/Q$a;

.field public static final enum Hw:Lcom/aide/ui/build/android/Q$a;

.field private static VH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static final Zo:[Lcom/aide/ui/build/android/Q$a;

.field private static gn:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum j6:Lcom/aide/ui/build/android/Q$a;

.field public static final enum v5:Lcom/aide/ui/build/android/Q$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1a9d0274cbf181c8L
    .end annotation

    :try_start_0
    const-class v0, Lcom/aide/ui/build/android/Q$a;

    const-wide v2, -0x55f8be3c5b6a64f5L

    const-wide v4, -0x55f8be3c5b6a64f5L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/build/android/Q$a;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x30829c1ad731cce5L    # 5.142951558141351E-75

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/android/Q$a;

    const-string v1, "NOT_INSTALLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/build/android/Q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/build/android/Q$a;->j6:Lcom/aide/ui/build/android/Q$a;

    new-instance v0, Lcom/aide/ui/build/android/Q$a;

    const-string v1, "OUTDATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/build/android/Q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/build/android/Q$a;->DW:Lcom/aide/ui/build/android/Q$a;

    new-instance v0, Lcom/aide/ui/build/android/Q$a;

    const-string v1, "AIDE_OUTDATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/build/android/Q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/build/android/Q$a;->FH:Lcom/aide/ui/build/android/Q$a;

    new-instance v0, Lcom/aide/ui/build/android/Q$a;

    const-string v1, "EXPANSION_FILE_MISSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/build/android/Q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/build/android/Q$a;->Hw:Lcom/aide/ui/build/android/Q$a;

    new-instance v0, Lcom/aide/ui/build/android/Q$a;

    const-string v1, "INSTALLED_OK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/build/android/Q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/build/android/Q$a;->v5:Lcom/aide/ui/build/android/Q$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/aide/ui/build/android/Q$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/ui/build/android/Q$a;->j6:Lcom/aide/ui/build/android/Q$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/ui/build/android/Q$a;->DW:Lcom/aide/ui/build/android/Q$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/aide/ui/build/android/Q$a;->FH:Lcom/aide/ui/build/android/Q$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/ui/build/android/Q$a;->Hw:Lcom/aide/ui/build/android/Q$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/aide/ui/build/android/Q$a;->v5:Lcom/aide/ui/build/android/Q$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/ui/build/android/Q$a;->Zo:[Lcom/aide/ui/build/android/Q$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/Q$a;->gn:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x30829c1ad731cce5L    # 5.142951558141351E-75

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0xa1a7d07e500800L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, 0x91335e7a8413d94L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/Q$a;->VH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x91335e7a8413d94L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/Q$a;->gn:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/ui/build/android/Q$a;
    .registers 7

    const-wide v4, 0xc9a38ddfcb9cd25L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/Q$a;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc9a38ddfcb9cd25L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/ui/build/android/Q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/build/android/Q$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/Q$a;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/ui/build/android/Q$a;
    .registers 6

    const-wide v4, 0x9ee08256a348bfbL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/Q$a;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9ee08256a348bfbL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/build/android/Q$a;->Zo:[Lcom/aide/ui/build/android/Q$a;

    invoke-virtual {v0}, [Lcom/aide/ui/build/android/Q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/ui/build/android/Q$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/Q$a;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
