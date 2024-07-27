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
        "Ljava/lang/Enum",
        "<",
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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x14d3a1df8bf473c3L
    .end annotation

    const-wide v8, 0x905475fdd8be7f0L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/aide/ui/Wa$a;

    const-wide v2, -0x87df7bdcebd7c7cL    # -4.651535327427069E267

    const-wide v4, -0x87df7bdcebd7c7cL    # -4.651535327427069E267

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/Wa$a;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x905475fdd8be7f0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/Wa$a;

    const-string v1, "SearchText"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/Wa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/Wa$a;->j6:Lcom/aide/ui/Wa$a;

    new-instance v0, Lcom/aide/ui/Wa$a;

    const-string v1, "GotoLine"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/Wa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/Wa$a;->DW:Lcom/aide/ui/Wa$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aide/ui/Wa$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/ui/Wa$a;->j6:Lcom/aide/ui/Wa$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/ui/Wa$a;->DW:Lcom/aide/ui/Wa$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/ui/Wa$a;->FH:[Lcom/aide/ui/Wa$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Wa$a;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x431bbfbc62f476cdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, -0x165a58f5263146f0L    # -8.286962229900558E200

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Wa$a;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x165a58f5263146f0L    # -8.286962229900558E200

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/Wa$a;->v5:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/ui/Wa$a;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x82e4032323ac72cL
    .end annotation

    const-wide v4, 0x454b0c6ca69b0a4L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Wa$a;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x454b0c6ca69b0a4L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/ui/Wa$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/Wa$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Wa$a;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/ui/Wa$a;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x141b5496a8181b90L
    .end annotation

    const-wide v4, -0xa255ff672fc8ec0L    # -5.117151479515357E259

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Wa$a;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa255ff672fc8ec0L    # -5.117151479515357E259

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/Wa$a;->FH:[Lcom/aide/ui/Wa$a;

    invoke-virtual {v0}, [Lcom/aide/ui/Wa$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/ui/Wa$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Wa$a;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
