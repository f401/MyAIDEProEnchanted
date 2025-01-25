.class public Labcd/Rc$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Rc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static DW:Labcd/Rc$a;

.field public static FH:Labcd/Rc$a;

.field public static Hw:Labcd/Rc$a;

.field public static VH:Labcd/Rc$a;

.field public static Zo:Labcd/Rc$a;

.field private static gn:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static j6:Labcd/Rc$a;

.field private static u7:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static v5:Labcd/Rc$a;


# instance fields
.field public EQ:Ljava/lang/String;

.field public tp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x202f72d6ae7ecae5L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x19ca0e8d1e7dd428L

    :try_start_6
    const-class v3, Labcd/Rc$a;

    const-wide v4, -0xb747df0fefa5815L  # -2.520960498766586E253

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Rc$a;->gn:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Labcd/Rc$a;

    const-string v4, "<length>"

    invoke-direct {v3, v4}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v3, Labcd/Rc$a;->j6:Labcd/Rc$a;

    new-instance v3, Labcd/Rc$a;

    const-string v4, "<number>"

    invoke-direct {v3, v4}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v3, Labcd/Rc$a;->DW:Labcd/Rc$a;

    new-instance v3, Labcd/Rc$a;

    const-string v4, "<percentage>"

    invoke-direct {v3, v4}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v3, Labcd/Rc$a;->FH:Labcd/Rc$a;

    new-instance v3, Labcd/Rc$a;

    const-string v4, "<url>"

    invoke-direct {v3, v4}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v3, Labcd/Rc$a;->Hw:Labcd/Rc$a;

    new-instance v3, Labcd/Rc$a;

    const-string v4, "<color>"

    invoke-direct {v3, v4}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v3, Labcd/Rc$a;->v5:Labcd/Rc$a;

    new-instance v3, Labcd/Rc$a;

    const-string v4, "<gradient>"

    invoke-direct {v3, v4}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v3, Labcd/Rc$a;->Zo:Labcd/Rc$a;

    new-instance v3, Labcd/Rc$a;

    const-string v4, "<font-family-name>"

    invoke-direct {v3, v4}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v3, Labcd/Rc$a;->VH:Labcd/Rc$a;
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_57

    return-void

    :catchall_57
    move-exception v3

    sget-boolean v4, Labcd/Rc$a;->u7:Z

    if-eqz v4, :cond_5f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5f
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xc1af391181efe79L

    :try_start_6
    sget-boolean v3, Labcd/Rc$a;->gn:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc$a;->tp:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/Rc$a;->u7:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Rc$a;->gn:Z

    if-eqz v0, :cond_d

    const-wide v0, -0xbacc859e6a445L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc$a;->tp:Ljava/lang/String;

    iput-object p2, p0, Labcd/Rc$a;->EQ:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/Rc$a;->u7:Z

    if-eqz v1, :cond_26

    const-wide v2, -0xbacc859e6a445L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public j6()Z
    .registers 5

    const-wide v0, 0x6d19e5c9f610ac0L

    :try_start_5
    sget-boolean v2, Labcd/Rc$a;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Rc$a;->tp:Ljava/lang/String;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_17

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Rc$a;->u7:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method
