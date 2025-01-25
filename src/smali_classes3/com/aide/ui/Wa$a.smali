.class final enum Lcom/aide/ui/Wa$a;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/Wa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aide/ui/Wa$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/ui/Wa$a;
    .annotation runtime Labcd/ru;
        field = 0xd98a888efd84b94L
    .end annotation
.end field

.field private static final FH:[Lcom/aide/ui/Wa$a;

.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum j6:Lcom/aide/ui/Wa$a;
    .annotation runtime Labcd/ru;
        field = 0x477855d7c7bc800L
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x14d3a1df8bf473c3L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x905475fdd8be7f0L

    :try_start_6
    const-class v3, Lcom/aide/ui/Wa$a;

    const-wide v4, -0x87df7bdcebd7c7cL  # -4.651535327427069E267

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/Wa$a;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/ui/Wa$a;

    const-string v4, "SearchText"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/aide/ui/Wa$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aide/ui/Wa$a;->j6:Lcom/aide/ui/Wa$a;

    new-instance v4, Lcom/aide/ui/Wa$a;

    const-string v6, "GotoLine"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/aide/ui/Wa$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/aide/ui/Wa$a;->DW:Lcom/aide/ui/Wa$a;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/aide/ui/Wa$a;

    aput-object v3, v6, v5

    aput-object v4, v6, v7

    sput-object v6, Lcom/aide/ui/Wa$a;->FH:[Lcom/aide/ui/Wa$a;
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Wa$a;->v5:Z

    if-eqz v4, :cond_3d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3d
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x431bbfbc62f476cdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Wa$a;->Hw:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x165a58f5263146f0L  # -8.286962229900558E200

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Wa$a;->v5:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x165a58f5263146f0L  # -8.286962229900558E200

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/ui/Wa$a;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x82e4032323ac72cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x454b0c6ca69b0a4L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Wa$a;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Lcom/aide/ui/Wa$a;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/Wa$a;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Wa$a;->v5:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Lcom/aide/ui/Wa$a;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x141b5496a8181b90L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xa255ff672fc8ec0L  # -5.117151479515357E259

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Wa$a;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/ui/Wa$a;->FH:[Lcom/aide/ui/Wa$a;

    invoke-virtual {v3}, [Lcom/aide/ui/Wa$a;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/aide/ui/Wa$a;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Wa$a;->v5:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
