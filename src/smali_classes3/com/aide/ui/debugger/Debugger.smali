.class public Lcom/aide/ui/debugger/Debugger;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/debugger/Debugger$a;,
        Lcom/aide/ui/debugger/Debugger$b;,
        Lcom/aide/ui/debugger/Debugger$c;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Lcom/aide/ui/debugger/Debugger;
    .annotation runtime Labcd/ru;
        field = 0x1ee457566d779279L
    .end annotation
.end field


# instance fields
.field private EQ:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x28d3090aad81bc38L
    .end annotation
.end field

.field private Hw:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = 0x14d44b7f1a549fc5L
    .end annotation
.end field

.field private J0:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0x4193ba57cb101500L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J8:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0x22ab5645cc174665L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Mr:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0x43c313e2578f10c5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private QX:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0xc380ba9fb8df8f7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private U2:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0x1bc6cb801945ed1fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = -0x25b6d197da63dcc9L
    .end annotation
.end field

.field private Ws:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0xa6b00dc28ad9740L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private XL:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0xf54f01d8ff6ce84L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0x40b36067f515be44L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a8:Landroid/os/Handler;
    .annotation runtime Labcd/ru;
        field = -0x87c13daa41d9fb8L
    .end annotation
.end field

.field private aM:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0x1ce8dfc501b3d75L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = -0xbd4962a66bafaf7L
    .end annotation
.end field

.field private j3:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0x6ac757047e918af9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lg:Ljava/lang/Runnable;
    .annotation runtime Labcd/ru;
        field = -0x3a0f5d3f76c37adbL
    .end annotation
.end field

.field private rN:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2a136aba83bb99b0L
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x59a3c1097834928L
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = 0x3bb55a0150880017L
    .end annotation
.end field

.field private v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x53de7dd234efb55L
    .end annotation
.end field

.field private we:I
    .annotation runtime Labcd/ru;
        field = -0x243cb08af386660fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/debugger/Debugger;

    const-wide v1, 0x17801cc048e0cd10L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x342789e8298f56dL  # -7.366853982012427E292

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/debugger/Debugger;->a8:Landroid/os/Handler;

    new-instance v3, Lcom/aide/ui/debugger/d;

    invoke-direct {v3, p0}, Lcom/aide/ui/debugger/d;-><init>(Lcom/aide/ui/debugger/Debugger;)V

    iput-object v3, p0, Lcom/aide/ui/debugger/Debugger;->lg:Ljava/lang/Runnable;

    const-string v3, "Debugger"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "connected"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/aide/ui/debugger/Debugger;->VH:Z
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v4, :cond_3f

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/debugger/Debugger;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->a8()V

    return-void
.end method

.method private FH(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x36bf37d8a8797850L
    .end annotation

    const-wide v0, -0x21f2e45d8df8a438L  # -1.135846160232708E145

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->Mr()V

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    if-nez v2, :cond_16

    iput-object p1, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    goto :goto_49

    :cond_16
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2f
    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    goto :goto_49

    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    :goto_49
    iget-boolean v2, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v2, :cond_58

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v4, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_59

    :cond_58
    return-void

    :catchall_59
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_61

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    goto :goto_63

    :goto_62
    throw v2

    :goto_63
    goto :goto_62
.end method

.method private Hw(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1a1d9e3b71a69e38L
    .end annotation

    const-wide v0, -0x2f4a897b4cb540d8L  # -6.362217603473356E80

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    const-string v3, "Debugger"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Package"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method private Mr()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2c814d1ac5f6a81L
    .end annotation

    const-wide v0, 0x3196f949d584f31L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->XL:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->aM:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->XL:Ljava/util/ArrayList;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->aM:Ljava/util/ArrayList;

    const-string v3, "O"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method private U2()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x63c1af01511f299L
    .end annotation

    const-wide v0, -0x3736758d545c4859L  # -4.4498370762479223E42

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v2, :cond_11

    return-object v2

    :cond_11
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    const-string v3, "Debugger"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "Package"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-object v2

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method private a8()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x26c5a8f9cf1df7cdL
    .end annotation

    const-wide v0, -0x1c091f8f945f2125L  # -3.5363170025944433E173

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    if-eqz v2, :cond_44

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->Mr()V

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2e

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    goto :goto_44

    :cond_2e
    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v3, :cond_44

    iget-object v4, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    invoke-static {v4, v3, v2}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_45

    :cond_44
    :goto_44
    return-void

    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4d
    throw v2
.end method

.method private er()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x547dc8f70660028L
    .end annotation

    const-wide v0, 0x3984bacbd7105630L  # 1.2775647259170944E-31

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->a8:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->lg:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->a8:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->lg:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private gW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x57adb0216be2eb33L
    .end annotation

    const-wide v0, 0x11b2b0fb1073ad91L  # 2.019870158080759E-223

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    const-string v3, "Debugger"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Breakpoints"

    const-string v4, "\n"

    iget-object v5, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public static j6(Landroid/content/Context;)Lcom/aide/ui/debugger/Debugger;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x7a5de0e1d464081L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/ui/debugger/Debugger;->j6:Lcom/aide/ui/debugger/Debugger;

    if-nez v3, :cond_18

    new-instance v3, Lcom/aide/ui/debugger/Debugger;

    invoke-direct {v3, p0}, Lcom/aide/ui/debugger/Debugger;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/aide/ui/debugger/Debugger;->j6:Lcom/aide/ui/debugger/Debugger;

    :cond_18
    sget-object p0, Lcom/aide/ui/debugger/Debugger;->j6:Lcom/aide/ui/debugger/Debugger;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-object p0

    :catchall_1b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method static synthetic j6(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/debugger/Debugger;->FH(Ljava/lang/String;)V

    return-void
.end method

.method private j6(Z)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x25f4cc7b818a76a3L
    .end annotation

    const-wide v0, -0x1319355d03e97f8fL  # -3.928445665637247E216

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/debugger/Debugger;->VH:Z

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    const-string v3, "Debugger"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "connected"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/debugger/Debugger;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    return p0
.end method

.method private lg()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x486f3bd2cb1d68abL
    .end annotation

    const-wide v0, -0x14b581ae2b26cd5L  # -2.21329100907415E302

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    const-string v4, "Debugger"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "Breakpoints"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method private rN()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xfac70f7132dee94L
    .end annotation

    const-wide v0, 0x13b6e8afcb933960L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method private yS()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x26d088fa04b480bL
    .end annotation

    const-wide v0, -0x2bf046aea4e955b5L  # -8.470229261314351E96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    invoke-direct {p0, v2}, Lcom/aide/ui/debugger/Debugger;->j6(Z)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/debugger/Debugger;->u7:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/debugger/Debugger$a;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x20f4980340170e6bL  # 6.291274724976565E-150

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_52

    :try_start_23
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_47

    const/4 v7, 0x0

    aget-object v4, v4, v7

    const/16 v7, 0x2f

    :try_start_35
    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/aide/ui/debugger/Debugger$a;

    invoke-direct {v7, p0, v4, v5, v6}, Lcom/aide/ui/debugger/Debugger$a;-><init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_47

    goto :goto_17

    :catchall_47
    move-exception v4

    goto :goto_17

    :cond_49
    :try_start_49
    new-instance v3, Lcom/aide/ui/debugger/e;

    invoke-direct {v3, p0}, Lcom/aide/ui/debugger/e;-><init>(Lcom/aide/ui/debugger/Debugger;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_52

    return-object v2

    :catchall_52
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_5a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v2

    :goto_5c
    goto :goto_5b
.end method

.method public DW(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1f71adb5bf9d18c0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->yS()V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x1f71adb5bf9d18c0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x46b24c1cc740d180L  # 3.711136196794233E32

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->j3()V

    invoke-direct {p0, p1}, Lcom/aide/ui/debugger/Debugger;->Hw(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public EQ()Z
    .registers 5

    const-wide v0, -0x9dc6b1de7cc78L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public FH()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/debugger/Debugger$c;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x3404bf5d7bd124cdL  # -1.0691661766386383E58

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    if-eqz v3, :cond_49

    const/4 v3, 0x0

    :goto_1e
    iget-object v4, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_49

    new-instance v4, Lcom/aide/ui/debugger/Debugger$c;

    iget-object v5, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/debugger/Debugger;->XL:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/aide/ui/debugger/Debugger;->aM:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/debugger/Debugger$c;-><init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_4a

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_49
    return-object v2

    :catchall_4a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_52

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_52
    goto :goto_54

    :goto_53
    throw v2

    :goto_54
    goto :goto_53
.end method

.method public Hw()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x1e23599f51994ee9L  # 1.680100615741443E-163

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->EQ:Ljava/lang/String;

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->tp:Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->tp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/Zk;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->EQ:Ljava/lang/String;

    :cond_20
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->EQ:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-object v0

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public J0()Z
    .registers 5

    const-wide v0, 0x3175c80b4cf01aa0L  # 1.9724557142940545E-70

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public J8()V
    .registers 5

    const-wide v0, 0x2834307975a96f88L  # 5.123940447610321E-115

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v2, :cond_1d

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->rN()V

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/debugger/a;->FH(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->er()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public QX()V
    .registers 5

    const-wide v0, -0x1138cc7bb885bbc0L  # -4.2939591969303996E225

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v2, :cond_1d

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->rN()V

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/debugger/a;->Hw(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->er()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public VH()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/debugger/Debugger$c;",
            ">;"
        }
    .end annotation

    const-wide v0, -0xf5c3546faf1fefL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v3, :cond_41

    const/4 v3, 0x0

    :goto_16
    iget-object v4, p0, Lcom/aide/ui/debugger/Debugger;->J0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_41

    new-instance v4, Lcom/aide/ui/debugger/Debugger$c;

    iget-object v5, p0, Lcom/aide/ui/debugger/Debugger;->J0:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/debugger/Debugger;->J8:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/aide/ui/debugger/Debugger;->Ws:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/debugger/Debugger$c;-><init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_42

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_41
    return-object v2

    :catchall_42
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_4a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4a
    goto :goto_4c

    :goto_4b
    throw v2

    :goto_4c
    goto :goto_4b
.end method

.method public Ws()V
    .registers 5

    const-wide v0, 0xcad9f8dd13cd328L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/debugger/Debugger;->u7:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public XL()V
    .registers 5

    const-wide v0, -0x2b932e6b4282c461L  # -4.924505439823276E98

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v2, :cond_1d

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->rN()V

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/debugger/a;->v5(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->er()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public Zo()I
    .registers 5

    const-wide v0, 0x3fef3a48944b9400L  # 0.975864686621776

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/debugger/Debugger;->we:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public aM()V
    .registers 5

    const-wide v0, -0x63b19397b85f6bbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v2, :cond_1d

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->rN()V

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/debugger/a;->Zo(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->er()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public gn()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/debugger/Debugger$b;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x47efff390e90f618L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->j3:Ljava/util/ArrayList;

    if-eqz v3, :cond_45

    const/4 v3, 0x0

    :goto_1a
    iget-object v4, p0, Lcom/aide/ui/debugger/Debugger;->j3:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_45

    new-instance v4, Lcom/aide/ui/debugger/Debugger$b;

    iget-object v5, p0, Lcom/aide/ui/debugger/Debugger;->j3:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/debugger/Debugger;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/aide/ui/debugger/Debugger;->U2:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/debugger/Debugger$b;-><init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_46

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_45
    return-object v2

    :catchall_46
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_4e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw v2

    :goto_50
    goto :goto_4f
.end method

.method public j3()V
    .registers 5

    const-wide v0, 0x2212d1ca99b4dc0dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-boolean v3, p0, Lcom/aide/ui/debugger/Debugger;->VH:Z

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/aide/ui/debugger/a;->DW(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->yS()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x815a1efb0e54645L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, p1}, Labcd/Zk;->lg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    return-object v2

    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_5c

    if-eqz v6, :cond_33

    :try_start_45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_59

    goto :goto_33

    :catchall_59
    move-exception v5

    goto :goto_33

    :cond_5b
    return-object v2

    :catchall_5c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_64

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    goto :goto_66

    :goto_65
    throw v2

    :goto_66
    goto :goto_65
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x2869542fcd517c50L  # -8.723521673542454E113

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v2, :cond_3f

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/aide/ui/debugger/Debugger;->Hw(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->gW()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    invoke-direct {p0, v3}, Lcom/aide/ui/debugger/Debugger;->j6(Z)V

    iput-boolean v3, p0, Lcom/aide/ui/debugger/Debugger;->u7:Z

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    :cond_3f
    return-void

    :catchall_40
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    throw v2
.end method

.method public j6(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    const-string v0, "ADRT"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v1, :cond_e

    const-wide v1, 0x10e5bf63069ccf19L

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->U2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->lg()V

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-static {p1, p2, v0}, Lcom/aide/ui/debugger/a;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/ui/debugger/Debugger;->j6(Z)V

    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-nez v0, :cond_79

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V

    goto :goto_79

    :cond_71
    const-string v1, "sendDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_2 .. :try_end_79} :catchall_7a

    :cond_79
    :goto_79
    return-void

    :catchall_7a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_8b

    const-wide v2, 0x10e5bf63069ccf19L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8b
    throw v0
.end method

.method public j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const-wide v1, -0xd08b1a059e7eec4L  # -6.365418474306345E245

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_21
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result p1

    if-nez p1, :cond_48

    iget-object p1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    iput-object p4, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/aide/ui/debugger/Debugger;->XL:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/aide/ui/debugger/Debugger;->aM:Ljava/util/ArrayList;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    :cond_48
    return-void
.end method

.method public j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const/4 v3, 0x3

    aput-object p4, v0, v3

    const/4 v3, 0x4

    aput-object p5, v0, v3

    const/4 v3, 0x5

    aput-object p6, v0, v3

    const/4 v3, 0x6

    aput-object p7, v0, v3

    const/4 v3, 0x7

    aput-object p8, v0, v3

    const-wide v3, 0x11af803a8300899bL

    invoke-static {v3, v4, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBreakpointHit "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ADRT"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->U2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-nez v0, :cond_a0

    invoke-direct {p0, v1}, Lcom/aide/ui/debugger/Debugger;->j6(Z)V

    iput-boolean v1, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    const/4 v0, 0x0

    :try_start_52
    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->tp:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->EQ:Ljava/lang/String;

    iput v2, p0, Lcom/aide/ui/debugger/Debugger;->we:I

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/aide/ui/debugger/Debugger;->tp:Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/debugger/Debugger;->we:I
    :try_end_70
    .catchall {:try_start_52 .. :try_end_70} :catchall_71

    goto :goto_72

    :catchall_71
    move-exception v0

    :goto_72
    iput-object p3, p0, Lcom/aide/ui/debugger/Debugger;->j3:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/aide/ui/debugger/Debugger;->Mr:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/aide/ui/debugger/Debugger;->U2:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/aide/ui/debugger/Debugger;->J0:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/aide/ui/debugger/Debugger;->J8:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/aide/ui/debugger/Debugger;->Ws:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/aide/ui/MainActivity;->Zo(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    if-eqz p3, :cond_a0

    invoke-static {p1, p2, p3}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :cond_89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sendDisconnect "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    return-void
.end method

.method public j6(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x56cf26334261232fL  # 1.4631053755878396E110

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    array-length v0, p2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    aget-object v2, p2, v1

    invoke-static {v2}, Labcd/Gk;->j6(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_19

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2a

    const-wide v2, 0x56cf26334261232fL  # 1.4631053755878396E110

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    goto :goto_2c

    :goto_2b
    throw v0

    :goto_2c
    goto :goto_2b
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x509f3dcc12a5645L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Zk;->lg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5d
    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_80
    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_80

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_9c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_cb

    :cond_a8
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->gW()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_cb

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-static {v1, v0, v2}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_cb
    .catchall {:try_start_0 .. :try_end_cb} :catchall_cc

    :cond_cb
    return-void

    :catchall_cc
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_dd

    const-wide v2, 0x509f3dcc12a5645L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_dd
    goto :goto_df

    :goto_de
    throw v0

    :goto_df
    goto :goto_de
.end method

.method public j6(Ljava/lang/String;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x2815e9d1889c626bL  # -3.212081899505168E115

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    if-nez p2, :cond_16

    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->j6()V

    :cond_16
    if-eqz p1, :cond_1e

    invoke-direct {p0, p1}, Lcom/aide/ui/debugger/Debugger;->Hw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->lg()V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    :cond_1e
    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x2815e9d1889c626bL  # -3.212081899505168E115

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public j6(Ljava/lang/String;I)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x66bd505d9ba394cL  # -4.468854932882486E277

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/aide/ui/debugger/Debugger;->we:I

    if-eq p2, v0, :cond_1a

    goto :goto_28

    :cond_1a
    if-eqz p1, :cond_28

    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_2a

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p1, 0x0

    :goto_29
    return p1

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x66bd505d9ba394cL  # -4.468854932882486E277

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method

.method public tp()Z
    .registers 5

    const-wide v0, 0x1a4e522f73fe9c28L  # 5.708692841967586E-182

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->VH:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public u7()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x19f64f688709a397L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public v5()Labcd/Tl;
    .registers 10

    const-wide v0, 0x1e4c42cea75b61a0L  # 9.815204526450467E-163

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Tl;

    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->Zo()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->Zo()I

    move-result v7

    const/4 v8, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v2

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public we()Z
    .registers 5

    const-wide v0, -0x272359f907d3b9a0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->u7:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
