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
            "LSl<",
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
            "LSl<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/LogCatConsole$a;

    const-wide v1, -0x2a3550ffb6b17c5L  # -7.323673715593292E295

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/LogCatConsole;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x54eb73d1f2ad008L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x18868501b4b29ea1L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;-><init>()V

    new-instance v3, Labcd/Sl;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Labcd/Sl;-><init>(I)V

    iput-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    new-instance v3, Labcd/Sl;

    invoke-direct {v3, v4}, Labcd/Sl;-><init>(I)V

    iput-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/LogCatConsole;Lcom/aide/ui/ga;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1c4356e8dc31dfc0L  # 1.563858753190888E-172

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/LogCatConsole$a;-><init>(Lcom/aide/ui/LogCatConsole;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x1c4356e8dc31dfc0L  # 1.563858753190888E-172

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method private DW(Labcd/Sl;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x114628f4ec08be00L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LSl<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0xb1ae1e52b5b975bL  # -1.23859932916433E255

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_7b

    :try_start_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Labcd/Sl;->Hw()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1a
    if-ltz v4, :cond_3a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v6}, Labcd/Sl;->DW()I

    move-result v6

    if-ge v5, v6, :cond_3a

    invoke-virtual {p1, v4}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Gk$a;

    invoke-virtual {p0, v5}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Gk$a;)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    :cond_3a
    iget-object v4, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v4}, Labcd/Sl;->j6()V

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v4}, Labcd/Sl;->j6()V

    const/16 v4, 0xa

    iput v4, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_4e
    if-ltz v4, :cond_73

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Gk$a;

    iget-object v6, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v6, v5}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Labcd/Gk$a;->j6()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v6, v5}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_4e

    :cond_73
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->XL()V

    monitor-exit v2

    return-void

    :catchall_78
    move-exception v3

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_f .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v3
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_83

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v2

    :goto_85
    goto :goto_84
.end method

.method private ei()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x585d4ed92873f6e0L
    .end annotation

    const-wide v0, 0x1ee773ddcf029111L  # 8.340716662617688E-160

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-static {v2}, Lcom/aide/ui/LogCatConsole;->DW(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/LogCatConsole$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/LogCatConsole$a;->P8()Z

    move-result v2
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_64

    const-string v3, ">"

    const-string v4, "<"

    if-eqz v2, :cond_40

    :try_start_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d065b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d065c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_63
    .catchall {:try_start_1c .. :try_end_63} :catchall_64

    return-object v0

    :catchall_64
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_6c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6c
    throw v2
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
            "LSl<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3969e6ec7c381L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x3969e6ec7c381L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method

.method public DW(Labcd/Gk$a;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xd68182af9dce2f1L
    .end annotation

    const-wide v0, -0x703d542b441944cL  # -6.09503073602591E274

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p1, Labcd/Gk$a;->gn:Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_1a
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p1, Labcd/Gk$a;->VH:Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_28
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, p1, Labcd/Gk$a;->Zo:Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_36
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    if-eqz v2, :cond_43

    invoke-virtual {p1, v2}, Labcd/Gk$a;->j6(Ljava/lang/String;)Z

    move-result p1
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_45

    if-eqz p1, :cond_41

    goto :goto_43

    :cond_41
    const/4 p1, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 p1, 0x1

    :goto_44
    return p1

    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v2
.end method

.method public EQ(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x222bef5c1db0d833L
    .end annotation

    const-wide v0, -0x141d5cce47514610L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_35

    if-ltz p1, :cond_28

    :try_start_11
    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v3}, Labcd/Sl;->Hw()I

    move-result v3

    if-lt p1, v3, :cond_1a

    goto :goto_28

    :cond_1a
    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v3, p1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    monitor-exit v2

    return v3

    :cond_28
    :goto_28
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole$a;->ei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    monitor-exit v2

    return v3

    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_32

    :try_start_34
    throw v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method public FH(II)C
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x9f6034dc2711e90L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x3935bb41f4315e5dL  # -1.0655779623435053E33

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_49

    if-ltz p2, :cond_3c

    :try_start_1b
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v1}, Labcd/Sl;->Hw()I

    move-result v1

    if-lt p2, v1, :cond_24

    goto :goto_3c

    :cond_24
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v1, p2}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt p1, v2, :cond_36

    monitor-exit v0

    const/16 p1, 0x20

    return p1

    :cond_36
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    monitor-exit v0

    return v1

    :cond_3c
    :goto_3c
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole$a;->ei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    monitor-exit v0

    return v1

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_46

    :try_start_48
    throw v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_62

    const-wide v2, -0x3935bb41f4315e5dL  # -1.0655779623435053E33

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v0
.end method

.method public FH(I)Lcom/aide/ui/views/editor/s;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x4953d2c66ad48110L
    .end annotation

    const-wide v0, 0x1def944c23ae747dL  # 1.7136996099982586E-164

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, -0x333334

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    if-nez p1, :cond_24

    iget-object v5, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v5

    if-eqz v5, :cond_1e

    const/high16 v2, -0x1000000

    :cond_1e
    new-instance v4, Lcom/aide/ui/views/editor/s;

    invoke-direct {v4, v2, v3}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    return-object v4

    :cond_24
    const v5, -0xff6700

    const/4 v6, 0x1

    if-ne p1, v6, :cond_30

    new-instance v2, Lcom/aide/ui/views/editor/s;

    invoke-direct {v2, v5, v3}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    return-object v2

    :cond_30
    const/4 v7, 0x2

    const v8, -0xbc00

    if-ne p1, v7, :cond_3c

    new-instance v2, Lcom/aide/ui/views/editor/s;

    invoke-direct {v2, v8, v3}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    return-object v2

    :cond_3c
    const/4 v7, 0x3

    const/high16 v9, -0x10000

    if-ne p1, v7, :cond_47

    new-instance v2, Lcom/aide/ui/views/editor/s;

    invoke-direct {v2, v9, v3}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    return-object v2

    :cond_47
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5a

    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v3

    if-eqz v3, :cond_54

    const/high16 v2, -0x1000000

    :cond_54
    new-instance v3, Lcom/aide/ui/views/editor/s;

    invoke-direct {v3, v2, v6}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    return-object v3

    :cond_5a
    const/4 v2, 0x5

    if-ne p1, v2, :cond_63

    new-instance v2, Lcom/aide/ui/views/editor/s;

    invoke-direct {v2, v5, v6}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    return-object v2

    :cond_63
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6c

    new-instance v2, Lcom/aide/ui/views/editor/s;

    invoke-direct {v2, v8, v6}, Lcom/aide/ui/views/editor/s;-><init>(II)V

    return-object v2

    :cond_6c
    new-instance v2, Lcom/aide/ui/views/editor/s;

    invoke-direct {v2, v9, v6}, Lcom/aide/ui/views/editor/s;-><init>(II)V
    :try_end_71
    .catchall {:try_start_5 .. :try_end_71} :catchall_72

    return-object v2

    :catchall_72
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_7f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7f
    throw v2
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
            "LSl<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x4eec88d8c9cf6ad4L  # -2.7542624459091693E-72

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x4eec88d8c9cf6ad4L  # -2.7542624459091693E-72

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
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
            "LSl<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x1f42424fef739aebL  # -1.0208286302419446E158

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x1f42424fef739aebL  # -1.0208286302419446E158

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method

.method public J8()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x50ecdea739253f38L
    .end annotation

    const-wide v0, 0x4a5296acd327c8f9L  # 1.0866892883993783E50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    :try_start_f
    iget v3, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    monitor-exit v2

    return v3

    :catchall_13
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public J8(I)Labcd/Gk$a;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3c6e29c82352287L
    .end annotation

    const-wide v0, 0x7984d33b70f1498L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_2a

    if-ltz p1, :cond_24

    :try_start_11
    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v3}, Labcd/Sl;->Hw()I

    move-result v3

    if-lt p1, v3, :cond_1a

    goto :goto_24

    :cond_1a
    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v3, p1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Gk$a;

    monitor-exit v2

    return-object v3

    :cond_24
    :goto_24
    monitor-exit v2

    const/4 p1, 0x0

    return-object p1

    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_27

    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public P8()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x263fd46db36447bcL
    .end annotation

    const-wide v0, 0x12733e170e470587L  # 8.517370834788446E-220

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    if-nez v2, :cond_1b

    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1d

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public VH(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xad547157fe987e7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xc4bb1830906f87cL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_73

    const/4 v1, 0x0

    if-ltz p2, :cond_6e

    :try_start_1c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v2}, Labcd/Sl;->Hw()I

    move-result v2

    if-lt p2, v2, :cond_25

    goto :goto_6e

    :cond_25
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v2, p2}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Gk$a;

    invoke-virtual {v2, p1}, Labcd/Gk$a;->j6(I)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {v2}, Labcd/Gk$a;->FH()Z

    move-result v3

    if-eqz v3, :cond_3c

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_3c
    invoke-virtual {v2}, Labcd/Gk$a;->DW()Z

    move-result v3

    if-eqz v3, :cond_45

    monitor-exit v0

    const/4 p1, 0x3

    return p1

    :cond_45
    invoke-virtual {v2}, Labcd/Gk$a;->Hw()Z

    move-result v2

    if-eqz v2, :cond_4e

    monitor-exit v0

    const/4 p1, 0x2

    return p1

    :cond_4e
    monitor-exit v0

    return v1

    :cond_50
    invoke-virtual {v2}, Labcd/Gk$a;->FH()Z

    move-result v1

    if-eqz v1, :cond_59

    monitor-exit v0

    const/4 p1, 0x5

    return p1

    :cond_59
    invoke-virtual {v2}, Labcd/Gk$a;->DW()Z

    move-result v1

    if-eqz v1, :cond_62

    monitor-exit v0

    const/4 p1, 0x7

    return p1

    :cond_62
    invoke-virtual {v2}, Labcd/Gk$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_6b

    monitor-exit v0

    const/4 p1, 0x6

    return p1

    :cond_6b
    monitor-exit v0

    const/4 p1, 0x4

    return p1

    :cond_6e
    :goto_6e
    monitor-exit v0

    return v1

    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_1c .. :try_end_72} :catchall_70

    :try_start_72
    throw v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    :catchall_73
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_8c

    const-wide v2, 0xc4bb1830906f87cL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8c
    throw v0
.end method

.method public j6(I[C)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x27d15f97e385226dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1737bd5d67903afcL  # 7.93959207581008E-197

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_46

    if-ltz p1, :cond_28

    :try_start_16
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v1}, Labcd/Sl;->Hw()I

    move-result v1

    if-lt p1, v1, :cond_1f

    goto :goto_28

    :cond_1f
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v1, p1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_2c

    :cond_28
    :goto_28
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole$a;->ei()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    array-length v2, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_36
    if-ge v3, v2, :cond_41

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_43

    :try_start_45
    throw v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_5b

    const-wide v2, 0x1737bd5d67903afcL  # 7.93959207581008E-197

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    goto :goto_5d

    :goto_5c
    throw v0

    :goto_5d
    goto :goto_5c
.end method

.method public j6(Labcd/Gk$a;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x110f45a8da915c03L
    .end annotation

    const-wide v0, 0x13a796e0c612a68L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Gk$a;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_46

    :try_start_15
    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v3, p1}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Gk$a;

    invoke-virtual {p1}, Labcd/Gk$a;->j6()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/LogCatConsole$a;->lg:Labcd/Sl;

    invoke-virtual {v5, v4}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/aide/ui/LogCatConsole$a;->rN:I

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->vy:Lcom/aide/ui/LogCatConsole;

    invoke-static {v3}, Lcom/aide/ui/LogCatConsole;->FH(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->J8()V

    :cond_3d
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->XL()V

    monitor-exit v2

    goto :goto_45

    :catchall_42
    move-exception v3

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_42

    :try_start_44
    throw v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_46

    :cond_45
    :goto_45
    return-void

    :catchall_46
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_4e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v2
.end method

.method public j6(Labcd/Sl;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xa359596955f92e8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LSl<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x1d9cb864cde97009L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    iput-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    iput-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    iput-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
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
            "LSl<",
            "Labcd/Gk$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x495484e4b892f80L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/LogCatConsole$a;->BT:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->er:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->yS:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole$a;->gW:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x495484e4b892f80L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method

.method public j6(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x11818cd61ab9f004L
    .end annotation

    const-wide v0, 0x1bb7480c854a4c53L  # 3.676989507178563E-175

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/aide/ui/LogCatConsole$a;->J8(I)Labcd/Gk$a;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/aide/ui/LogCatConsole$a;->J8(I)Labcd/Gk$a;

    move-result-object v3

    if-eqz v2, :cond_22

    if-eqz v3, :cond_22

    iget v2, v2, Labcd/Gk$a;->Hw:I

    iget p1, v3, Labcd/Gk$a;->Hw:I
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    if-eq v2, p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public tp()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x13a8ab9acc8e2528L
    .end annotation

    const-wide v0, -0x20ab77a13b749babL  # -1.6802883593961006E151

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const/16 v0, 0x8

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public v5()I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2e12eae7ee3278e9L
    .end annotation

    const-wide v0, 0x15c6a327bd9812c0L  # 9.025225315049387E-204

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1f

    :try_start_f
    iget-object v3, p0, Lcom/aide/ui/LogCatConsole$a;->a8:Labcd/Sl;

    invoke-virtual {v3}, Labcd/Sl;->Hw()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    monitor-exit v2

    return v3

    :catchall_1c
    move-exception v3

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public vy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1067dbf354214377L
    .end annotation

    const-wide v0, 0xfa19ed26a0a5b80L  # 2.21671105406398E-233

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Sl;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Labcd/Sl;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/aide/ui/LogCatConsole$a;->DW(Labcd/Sl;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole$a;->U2:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
