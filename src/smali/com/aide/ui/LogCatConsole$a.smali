.class Lcom/aide/ui/LogCatConsole$a;
.super Lcom/aide/ui/views/editor/g;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/LogCatConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static Mr:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static U2:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private BT:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x25bd2421721b6810L
    .end annotation
.end field

.field private a8:Labcd/Sl;
    .annotation runtime Labcd/ru;
        field = -0x218099d607930029L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSl",
            "<",
            "Labcd/Gk$a;",
            ">;"
        }
    .end annotation
.end field

.field private er:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x6c6a08d4c66c4f3L
    .end annotation
.end field

.field private gW:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x24d58a82bd9e8dcfL
    .end annotation
.end field

.field private lg:Labcd/Sl;
    .annotation runtime Labcd/ru;
        field = 0x1baa570c729df760L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSl",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private rN:I
    .annotation runtime Labcd/ru;
        field = -0x401b162c9dabd57fL
    .end annotation
.end field

.field final vy:Lcom/aide/ui/LogCatConsole;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private yS:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x25c6506455f96d4dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x2a3550ffb6b17c5L    # -7.323673715593292E295

    const-class v0, Lcom/aide/ui/LogCatConsole$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/LogCatConsole;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x54eb73d1f2ad008L
    .end annotation

    const-wide v4, 0x18868501b4b29ea1L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18868501b4b29ea1L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;-><init>()V

    new-instance v0, Labcd/Sl;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Labcd/Sl;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    new-instance v0, Labcd/Sl;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Labcd/Sl;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/LogCatConsole;Lcom/aide/ui/ga;)V
    .registers 10

    const-wide v2, 0x1c4356e8dc31dfc0L    # 1.563858753190888E-172

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c4356e8dc31dfc0L    # 1.563858753190888E-172

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/LogCatConsole$a;-><init>(Lcom/aide/ui/LogCatConsole;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(Labcd/Sl;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x114628f4ec08be00L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LSl",
            "<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    const-wide v6, -0xb1ae1e52b5b975bL    # -1.23859932916433E255

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb1ae1e52b5b975bL    # -1.23859932916433E255

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Labcd/Sl;->Hw()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v4}, Labcd/Sl;->DW()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {p1, v1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gk$a;

    invoke-virtual {p0, v0}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Gk$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->j6()V

    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->j6()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gk$a;

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v4, v0}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Labcd/Gk$a;->j6()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v4, v0}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->XL()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private ei()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x585d4ed92873f6e0L
    .end annotation

    const-wide v4, 0x1ee773ddcf029111L    # 8.340716662617688E-160

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ee773ddcf029111L    # 8.340716662617688E-160

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-static {v0}, Lcom/aide/ui/LogCatConsole;->DW(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/LogCatConsole$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/LogCatConsole$a;->P8()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d065b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d065c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;Labcd/Sl;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xd1951e91682a1d8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LSl",
            "<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0x3969e6ec7c381L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3969e6ec7c381L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public DW(Labcd/Gk$a;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xd68182af9dce2f1L
    .end annotation

    const-wide v2, -0x703d542b441944cL    # -6.09503073602591E274

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x703d542b441944cL    # -6.09503073602591E274

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Labcd/Gk$a;->gn:Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Labcd/Gk$a;->VH:Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Labcd/Gk$a;->Zo:Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Labcd/Gk$a;->j6(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_6

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method public EQ(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x222bef5c1db0d833L
    .end annotation

    const-wide v2, -0x141d5cce47514610L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x141d5cce47514610L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole$a;->ei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v0, p1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public FH(II)C
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x9f6034dc2711e90L
    .end annotation

    const-wide v2, -0x3935bb41f4315e5dL    # -1.0655779623435053E33

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x3935bb41f4315e5dL    # -1.0655779623435053E33

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-lt p2, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole$a;->ei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v0, p2}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt p1, v4, :cond_3

    monitor-exit v1

    const/16 v0, 0x20

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public FH(I)Lcom/aide/ui/views/editor/s;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4953d2c66ad48110L
    .end annotation

    const v1, -0x333334

    const/4 v4, 0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x1def944c23ae747dL    # 1.7136996099982586E-164

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    const/high16 v0, -0x1000000

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    :cond_1
    new-instance v0, Lcom/aide/ui/views/editor/s;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    :goto_0
    return-object v0

    :cond_2
    if-ne p1, v4, :cond_4

    new-instance v0, Lcom/aide/ui/views/editor/s;

    const v1, -0xff6700

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/s;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_3

    const-wide v2, 0x1def944c23ae747dL    # 1.7136996099982586E-164

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    :try_start_1
    new-instance v0, Lcom/aide/ui/views/editor/s;

    const v1, -0xbc00

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    new-instance v0, Lcom/aide/ui/views/editor/s;

    const/high16 v1, -0x10000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v0

    :cond_7
    new-instance v0, Lcom/aide/ui/views/editor/s;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    goto :goto_0

    :cond_8
    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    new-instance v0, Lcom/aide/ui/views/editor/s;

    const v1, -0xff6700

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    goto :goto_0

    :cond_9
    const/4 v0, 0x6

    if-ne p1, v0, :cond_a

    new-instance v0, Lcom/aide/ui/views/editor/s;

    const v1, -0xbc00

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    goto :goto_0

    :cond_a
    new-instance v0, Lcom/aide/ui/views/editor/s;

    const/high16 v1, -0x10000

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/views/editor/s;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public FH(Ljava/lang/String;Labcd/Sl;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x7eb5bdea0155bcbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LSl",
            "<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0x4eec88d8c9cf6ad4L    # -2.7542624459091693E-72

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4eec88d8c9cf6ad4L    # -2.7542624459091693E-72

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public Hw(Ljava/lang/String;Labcd/Sl;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x43c6d39dcc588d38L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LSl",
            "<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0x1f42424fef739aebL    # -1.0208286302419446E158

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f42424fef739aebL    # -1.0208286302419446E158

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public J8()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x50ecdea739253f38L
    .end annotation

    const-wide v2, 0x4a5296acd327c8f9L    # 1.0866892883993783E50

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4a5296acd327c8f9L    # 1.0866892883993783E50

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8(I)Labcd/Gk$a;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3c6e29c82352287L
    .end annotation

    const-wide v2, 0x7984d33b70f1498L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7984d33b70f1498L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v0, p1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gk$a;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public P8()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x263fd46db36447bcL
    .end annotation

    const-wide v2, 0x12733e170e470587L    # 8.517370834788446E-220

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12733e170e470587L    # 8.517370834788446E-220

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public VH(II)I
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xad547157fe987e7L
    .end annotation

    const-wide v2, 0xc4bb1830906f87cL

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0xc4bb1830906f87cL

    invoke-static {v6, v7, p0, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-lt p2, v0, :cond_2

    :cond_1
    monitor-exit v4

    move v0, v1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v0, p2}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gk$a;

    invoke-virtual {v0, p1}, Labcd/Gk$a;->j6(I)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Labcd/Gk$a;->FH()Z

    move-result v5

    if-eqz v5, :cond_3

    monitor-exit v4

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Labcd/Gk$a;->DW()Z

    move-result v5

    if-eqz v5, :cond_4

    monitor-exit v4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Labcd/Gk$a;->Hw()Z

    move-result v0

    if-eqz v0, :cond_5

    monitor-exit v4

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    monitor-exit v4

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Labcd/Gk$a;->FH()Z

    move-result v1

    if-eqz v1, :cond_7

    monitor-exit v4

    const/4 v0, 0x5

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Labcd/Gk$a;->DW()Z

    move-result v1

    if-eqz v1, :cond_8

    monitor-exit v4

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Labcd/Gk$a;->Hw()Z

    move-result v0

    if-eqz v0, :cond_9

    monitor-exit v4

    const/4 v0, 0x6

    goto :goto_0

    :cond_9
    monitor-exit v4

    const/4 v0, 0x4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v0, :cond_a

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    throw v1
.end method

.method public j6(I[C)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x27d15f97e385226dL
    .end annotation

    const-wide v2, 0x1737bd5d67903afcL    # 7.93959207581008E-197

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1737bd5d67903afcL    # 7.93959207581008E-197

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole$a;->ei()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    array-length v0, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_3

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aput-char v6, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v0, p1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    goto :goto_0

    :cond_3
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Labcd/Gk$a;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x110f45a8da915c03L
    .end annotation

    const-wide v4, 0x13a796e0c612a68L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13a796e0c612a68L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Gk$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v0, p1}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gk$a;

    invoke-virtual {p1}, Labcd/Gk$a;->j6()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v3, v2}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-static {v0}, Lcom/aide/ui/LogCatConsole;->FH(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->J8()V

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->XL()V

    monitor-exit v1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Labcd/Sl;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xa359596955f92e8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LSl",
            "<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    const-wide v2, 0x1d9cb864cde97009L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1d9cb864cde97009L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Labcd/Sl;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x398fca435c2257fdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LSl",
            "<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0x495484e4b892f80L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x495484e4b892f80L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x11818cd61ab9f004L
    .end annotation

    const-wide v2, 0x1bb7480c854a4c53L    # 3.676989507178563E-175

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1bb7480c854a4c53L    # 3.676989507178563E-175

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/LogCatConsole$a;->J8(I)Labcd/Gk$a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/aide/ui/LogCatConsole$a;->J8(I)Labcd/Gk$a;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget v0, v0, Labcd/Gk$a;->Hw:I

    iget v1, v1, Labcd/Gk$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public tp()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x13a8ab9acc8e2528L
    .end annotation

    const-wide v2, -0x20ab77a13b749babL    # -1.6802883593961006E151

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20ab77a13b749babL    # -1.6802883593961006E151

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/16 v0, 0x8

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()I
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2e12eae7ee3278e9L
    .end annotation

    const-wide v4, 0x15c6a327bd9812c0L    # 9.025225315049387E-204

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15c6a327bd9812c0L    # 9.025225315049387E-204

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v2}, Labcd/Sl;->Hw()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public vy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1067dbf354214377L
    .end annotation

    const-wide v2, 0xfa19ed26a0a5b80L    # 2.21671105406398E-233

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xfa19ed26a0a5b80L    # 2.21671105406398E-233

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Sl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Labcd/Sl;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
