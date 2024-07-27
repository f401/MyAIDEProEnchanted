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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x202f72d6ae7ecae5L
    .end annotation

    const-wide v8, 0x19ca0e8d1e7dd428L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Rc$a;

    const-wide v2, -0xb747df0fefa5815L    # -2.520960498766586E253

    const-wide v4, -0xb747df0fefa5815L    # -2.520960498766586E253

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Rc$a;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19ca0e8d1e7dd428L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Rc$a;

    const-string v1, "<length>"

    invoke-direct {v0, v1}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/Rc$a;->j6:Labcd/Rc$a;

    new-instance v0, Labcd/Rc$a;

    const-string v1, "<number>"

    invoke-direct {v0, v1}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/Rc$a;->DW:Labcd/Rc$a;

    new-instance v0, Labcd/Rc$a;

    const-string v1, "<percentage>"

    invoke-direct {v0, v1}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/Rc$a;->FH:Labcd/Rc$a;

    new-instance v0, Labcd/Rc$a;

    const-string v1, "<url>"

    invoke-direct {v0, v1}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/Rc$a;->Hw:Labcd/Rc$a;

    new-instance v0, Labcd/Rc$a;

    const-string v1, "<color>"

    invoke-direct {v0, v1}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/Rc$a;->v5:Labcd/Rc$a;

    new-instance v0, Labcd/Rc$a;

    const-string v1, "<gradient>"

    invoke-direct {v0, v1}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/Rc$a;->Zo:Labcd/Rc$a;

    new-instance v0, Labcd/Rc$a;

    const-string v1, "<font-family-name>"

    invoke-direct {v0, v1}, Labcd/Rc$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/Rc$a;->VH:Labcd/Rc$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Rc$a;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0xc1af391181efe79L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Rc$a;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc1af391181efe79L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc$a;->tp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Rc$a;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide v2, -0xbacc859e6a445L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Rc$a;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xbacc859e6a445L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc$a;->tp:Ljava/lang/String;

    iput-object p2, p0, Labcd/Rc$a;->EQ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Rc$a;->u7:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public j6()Z
    .registers 5

    const-wide v2, 0x6d19e5c9f610ac0L

    :try_start_0
    sget-boolean v0, Labcd/Rc$a;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6d19e5c9f610ac0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Rc$a;->tp:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Rc$a;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
