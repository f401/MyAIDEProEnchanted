.class final enum Lcom/aide/ui/views/editor/OEditor$b;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/OEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aide/ui/views/editor/OEditor$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/ui/views/editor/OEditor$b;
    .annotation runtime Labcd/ru;
        field = -0x1e60b17cb363109fL
    .end annotation
.end field

.field public static final enum FH:Lcom/aide/ui/views/editor/OEditor$b;
    .annotation runtime Labcd/ru;
        field = 0x193713391d404d7cL
    .end annotation
.end field

.field public static final enum Hw:Lcom/aide/ui/views/editor/OEditor$b;
    .annotation runtime Labcd/ru;
        field = 0x285a92816d1e3158L
    .end annotation
.end field

.field public static final enum VH:Lcom/aide/ui/views/editor/OEditor$b;
    .annotation runtime Labcd/ru;
        field = -0x5c1797413df6e1f0L
    .end annotation
.end field

.field public static final enum Zo:Lcom/aide/ui/views/editor/OEditor$b;
    .annotation runtime Labcd/ru;
        field = -0x1d525927eafc73a0L
    .end annotation
.end field

.field private static final gn:[Lcom/aide/ui/views/editor/OEditor$b;

.field public static final enum j6:Lcom/aide/ui/views/editor/OEditor$b;
    .annotation runtime Labcd/ru;
        field = -0x1a68fc1dab4a5a78L
    .end annotation
.end field

.field private static tp:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum v5:Lcom/aide/ui/views/editor/OEditor$b;
    .annotation runtime Labcd/ru;
        field = -0x359c178e5c505910L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x283adc891e4d6d08L
    .end annotation

    :try_start_0
    const-class v0, Lcom/aide/ui/views/editor/OEditor$b;

    const-wide v2, 0x10925cb049edd9f8L

    const-wide v4, 0x10925cb049edd9f8L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$b;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c304e8ccc1c218fL    # 6.593138489745798E-173

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/OEditor$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OEditor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    new-instance v0, Lcom/aide/ui/views/editor/OEditor$b;

    const-string v1, "INSERTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OEditor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OEditor$b;->DW:Lcom/aide/ui/views/editor/OEditor$b;

    new-instance v0, Lcom/aide/ui/views/editor/OEditor$b;

    const-string v1, "OVERWRITING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OEditor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OEditor$b;->FH:Lcom/aide/ui/views/editor/OEditor$b;

    new-instance v0, Lcom/aide/ui/views/editor/OEditor$b;

    const-string v1, "DELETING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OEditor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OEditor$b;->Hw:Lcom/aide/ui/views/editor/OEditor$b;

    new-instance v0, Lcom/aide/ui/views/editor/OEditor$b;

    const-string v1, "BACKSPACING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OEditor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OEditor$b;->v5:Lcom/aide/ui/views/editor/OEditor$b;

    new-instance v0, Lcom/aide/ui/views/editor/OEditor$b;

    const-string v1, "MOVING_VERTICALLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OEditor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OEditor$b;->Zo:Lcom/aide/ui/views/editor/OEditor$b;

    new-instance v0, Lcom/aide/ui/views/editor/OEditor$b;

    const-string v1, "EMACS_KILLING_LINES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/OEditor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/ui/views/editor/OEditor$b;->VH:Lcom/aide/ui/views/editor/OEditor$b;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/aide/ui/views/editor/OEditor$b;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->DW:Lcom/aide/ui/views/editor/OEditor$b;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->FH:Lcom/aide/ui/views/editor/OEditor$b;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->Hw:Lcom/aide/ui/views/editor/OEditor$b;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->v5:Lcom/aide/ui/views/editor/OEditor$b;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->Zo:Lcom/aide/ui/views/editor/OEditor$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->VH:Lcom/aide/ui/views/editor/OEditor$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/ui/views/editor/OEditor$b;->gn:[Lcom/aide/ui/views/editor/OEditor$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$b;->tp:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x1c304e8ccc1c218fL    # 6.593138489745798E-173

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x5491cedc21175680L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, -0x3ec31cfee961f5e1L    # -1893121.088348992

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$b;->u7:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x3ec31cfee961f5e1L    # -1893121.088348992

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$b;->tp:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/ui/views/editor/OEditor$b;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xc2cc38cf2c46d05L
    .end annotation

    const-wide v4, -0x2b0ebb48809fd5L    # -5.882516749077E307

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$b;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2b0ebb48809fd5L    # -5.882516749077E307

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/OEditor$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$b;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/ui/views/editor/OEditor$b;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x686d59d7ea46e65L
    .end annotation

    const-wide v4, -0x319be49df963287L    # -4.442078964162962E293

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$b;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x319be49df963287L    # -4.442078964162962E293

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/views/editor/OEditor$b;->gn:[Lcom/aide/ui/views/editor/OEditor$b;

    invoke-virtual {v0}, [Lcom/aide/ui/views/editor/OEditor$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/ui/views/editor/OEditor$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$b;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
