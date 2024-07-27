.class final enum Lcom/aide/ui/views/editor/OConsole$c;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/OConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aide/ui/views/editor/OConsole$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/ui/views/editor/OConsole$c;
    .annotation runtime Labcd/ru;
        field = -0x25da8b46f2ca75d8L
    .end annotation
.end field

.field public static final enum FH:Lcom/aide/ui/views/editor/OConsole$c;
    .annotation runtime Labcd/ru;
        field = -0x24c3dedaae6bd271L
    .end annotation
.end field

.field public static final enum Hw:Lcom/aide/ui/views/editor/OConsole$c;
    .annotation runtime Labcd/ru;
        field = -0xc4db71770e05dd8L
    .end annotation
.end field

.field private static final VH:[Lcom/aide/ui/views/editor/OConsole$c;

.field public static final enum Zo:Lcom/aide/ui/views/editor/OConsole$c;
    .annotation runtime Labcd/ru;
        field = -0x1eb4aa0fb8cfcfe4L
    .end annotation
.end field

.field private static gn:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum j6:Lcom/aide/ui/views/editor/OConsole$c;
    .annotation runtime Labcd/ru;
        field = -0x1ec2d428bd4589d1L
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum v5:Lcom/aide/ui/views/editor/OConsole$c;
    .annotation runtime Labcd/ru;
        field = -0x2cc50460de96d431L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2759dc59b14947a3L
    .end annotation

    :try_start_0
    const-class v0, Lcom/aide/ui/views/editor/OConsole$c;

    const-wide v2, -0x17188a23a5ea6d30L    # -2.192110642212201E197

    const-wide v4, -0x17188a23a5ea6d30L    # -2.192110642212201E197

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/views/editor/OConsole$c;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x32fe4b3fded20f3bL    # -9.104811542091013E62

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/OConsole$c;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OConsole$c;->j6:Lcom/aide/ui/views/editor/OConsole$c;

    new-instance v0, Lcom/aide/ui/views/editor/OConsole$c;

    const-string v1, "COLOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OConsole$c;->DW:Lcom/aide/ui/views/editor/OConsole$c;

    new-instance v0, Lcom/aide/ui/views/editor/OConsole$c;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OConsole$c;->FH:Lcom/aide/ui/views/editor/OConsole$c;

    new-instance v0, Lcom/aide/ui/views/editor/OConsole$c;

    const-string v1, "DEBUGGER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OConsole$c;->Hw:Lcom/aide/ui/views/editor/OConsole$c;

    new-instance v0, Lcom/aide/ui/views/editor/OConsole$c;

    const-string v1, "DEBUGGER_START"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OConsole$c;->v5:Lcom/aide/ui/views/editor/OConsole$c;

    new-instance v0, Lcom/aide/ui/views/editor/OConsole$c;

    const-string v1, "DEBUGGER_END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OConsole$c;->Zo:Lcom/aide/ui/views/editor/OConsole$c;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/aide/ui/views/editor/OConsole$c;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/ui/views/editor/OConsole$c;->j6:Lcom/aide/ui/views/editor/OConsole$c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/ui/views/editor/OConsole$c;->DW:Lcom/aide/ui/views/editor/OConsole$c;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/aide/ui/views/editor/OConsole$c;->FH:Lcom/aide/ui/views/editor/OConsole$c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/ui/views/editor/OConsole$c;->Hw:Lcom/aide/ui/views/editor/OConsole$c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/aide/ui/views/editor/OConsole$c;->v5:Lcom/aide/ui/views/editor/OConsole$c;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/aide/ui/views/editor/OConsole$c;->Zo:Lcom/aide/ui/views/editor/OConsole$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/ui/views/editor/OConsole$c;->VH:[Lcom/aide/ui/views/editor/OConsole$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OConsole$c;->u7:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x32fe4b3fded20f3bL    # -9.104811542091013E62

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x561da3b7c38557L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, 0x47f9c9cf036a70bL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OConsole$c;->gn:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x47f9c9cf036a70bL

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/OConsole$c;->u7:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/ui/views/editor/OConsole$c;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xd0ae79911ede0L
    .end annotation

    const-wide v4, 0xc3e39eefac45fe1L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OConsole$c;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc3e39eefac45fe1L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/ui/views/editor/OConsole$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/OConsole$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OConsole$c;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/ui/views/editor/OConsole$c;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x286e5c744955950L
    .end annotation

    const-wide v4, 0x14420c3eedd737efL    # 4.28882341614491E-211

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OConsole$c;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14420c3eedd737efL    # 4.28882341614491E-211

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/views/editor/OConsole$c;->VH:[Lcom/aide/ui/views/editor/OConsole$c;

    invoke-virtual {v0}, [Lcom/aide/ui/views/editor/OConsole$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/ui/views/editor/OConsole$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OConsole$c;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
