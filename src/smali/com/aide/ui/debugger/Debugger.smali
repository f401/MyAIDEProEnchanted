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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
    .registers 4

    const-wide v2, 0x17801cc048e0cd10L

    const-class v0, Lcom/aide/ui/debugger/Debugger;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, -0x342789e8298f56dL    # -7.366853982012427E292

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x342789e8298f56dL    # -7.366853982012427E292

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->a8:Landroid/os/Handler;

    new-instance v0, Lcom/aide/ui/debugger/d;

    invoke-direct {v0, p0}, Lcom/aide/ui/debugger/d;-><init>(Lcom/aide/ui/debugger/Debugger;)V

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->lg:Ljava/lang/Runnable;

    const-string v0, "Debugger"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "connected"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->VH:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/debugger/Debugger;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->a8()V

    return-void
.end method

.method private FH(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x36bf37d8a8797850L
    .end annotation

    const-wide v4, -0x21f2e45d8df8a438L    # -1.135846160232708E145

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x21f2e45d8df8a438L    # -1.135846160232708E145

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->Mr()V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    :goto_0
    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private Hw(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1a1d9e3b71a69e38L
    .end annotation

    const-wide v4, -0x2f4a897b4cb540d8L    # -6.362217603473356E80

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2f4a897b4cb540d8L    # -6.362217603473356E80

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    const-string v1, "Debugger"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Package"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Mr()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2c814d1ac5f6a81L
    .end annotation

    const-wide v2, 0x3196f949d584f31L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3196f949d584f31L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->XL:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->aM:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->XL:Ljava/util/ArrayList;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->aM:Ljava/util/ArrayList;

    const-string v1, "O"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private U2()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x63c1af01511f299L
    .end annotation

    const-wide v4, -0x3736758d545c4859L    # -4.4498370762479223E42

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3736758d545c4859L    # -4.4498370762479223E42

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    const-string v1, "Debugger"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Package"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private a8()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x26c5a8f9cf1df7cdL
    .end annotation

    const-wide v4, -0x1c091f8f945f2125L    # -3.5363170025944433E173

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c091f8f945f2125L    # -3.5363170025944433E173

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->Mr()V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private er()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x547dc8f70660028L
    .end annotation

    const-wide v4, 0x3984bacbd7105630L    # 1.2775647259170944E-31

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3984bacbd7105630L    # 1.2775647259170944E-31

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->a8:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->lg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->a8:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->lg:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private gW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x57adb0216be2eb33L
    .end annotation

    const-wide v4, 0x11b2b0fb1073ad91L    # 2.019870158080759E-223

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x11b2b0fb1073ad91L    # 2.019870158080759E-223

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    const-string v1, "Debugger"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Breakpoints"

    const-string v2, "\n"

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/content/Context;)Lcom/aide/ui/debugger/Debugger;
    .registers 7

    const-wide v4, -0x7a5de0e1d464081L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7a5de0e1d464081L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/debugger/Debugger;->j6:Lcom/aide/ui/debugger/Debugger;

    if-nez v0, :cond_1

    new-instance v0, Lcom/aide/ui/debugger/Debugger;

    invoke-direct {v0, p0}, Lcom/aide/ui/debugger/Debugger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aide/ui/debugger/Debugger;->j6:Lcom/aide/ui/debugger/Debugger;

    :cond_1
    sget-object v0, Lcom/aide/ui/debugger/Debugger;->j6:Lcom/aide/ui/debugger/Debugger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/debugger/Debugger;->FH(Ljava/lang/String;)V

    return-void
.end method

.method private j6(Z)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x25f4cc7b818a76a3L
    .end annotation

    const-wide v4, -0x1319355d03e97f8fL    # -3.928445665637247E216

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1319355d03e97f8fL    # -3.928445665637247E216

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/debugger/Debugger;->VH:Z

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    const-string v1, "Debugger"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "connected"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/debugger/Debugger;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    return v0
.end method

.method private lg()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x486f3bd2cb1d68abL
    .end annotation

    const-wide v4, -0x14b581ae2b26cd5L    # -2.21329100907415E302

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14b581ae2b26cd5L    # -2.21329100907415E302

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    const-string v2, "Debugger"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "Breakpoints"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private rN()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xfac70f7132dee94L
    .end annotation

    const-wide v2, 0x13b6e8afcb933960L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13b6e8afcb933960L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private yS()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x26d088fa04b480bL
    .end annotation

    const-wide v2, -0x2bf046aea4e955b5L    # -8.470229261314351E96

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2bf046aea4e955b5L    # -8.470229261314351E96

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/ui/debugger/Debugger;->j6(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->u7:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/debugger/Debugger$a;",
            ">;"
        }
    .end annotation

    const-wide v6, 0x20f4980340170e6bL    # 6.291274724976565E-150

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20f4980340170e6bL    # 6.291274724976565E-150

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/16 v4, 0x2f

    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/aide/ui/debugger/Debugger$a;

    invoke-direct {v5, p0, v0, v4, v3}, Lcom/aide/ui/debugger/Debugger$a;-><init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v0, Lcom/aide/ui/debugger/e;

    invoke-direct {v0, p0}, Lcom/aide/ui/debugger/e;-><init>(Lcom/aide/ui/debugger/Debugger;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    const-wide v2, 0x1f71adb5bf9d18c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f71adb5bf9d18c0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->yS()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0x46b24c1cc740d180L    # 3.711136196794233E32

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x46b24c1cc740d180L    # 3.711136196794233E32

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->j3()V

    invoke-direct {p0, p1}, Lcom/aide/ui/debugger/Debugger;->Hw(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public EQ()Z
    .registers 5

    const-wide v2, -0x9dc6b1de7cc78L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9dc6b1de7cc78L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/debugger/Debugger$c;",
            ">;"
        }
    .end annotation

    const-wide v6, -0x3404bf5d7bd124cdL    # -1.0691661766386383E58

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3404bf5d7bd124cdL    # -1.0691661766386383E58

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    new-instance v5, Lcom/aide/ui/debugger/Debugger$c;

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->XL:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->aM:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/aide/ui/debugger/Debugger$c;-><init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v4
.end method

.method public Hw()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x1e23599f51994ee9L    # 1.680100615741443E-163

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e23599f51994ee9L    # 1.680100615741443E-163

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->EQ:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->tp:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->tp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/Zk;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->EQ:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->EQ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public J0()Z
    .registers 5

    const-wide v2, 0x3175c80b4cf01aa0L    # 1.9724557142940545E-70

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3175c80b4cf01aa0L    # 1.9724557142940545E-70

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8()V
    .registers 5

    const-wide v2, 0x2834307975a96f88L    # 5.123940447610321E-115

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2834307975a96f88L    # 5.123940447610321E-115

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->rN()V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aide/ui/debugger/a;->FH(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->er()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public QX()V
    .registers 5

    const-wide v2, -0x1138cc7bb885bbc0L    # -4.2939591969303996E225

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1138cc7bb885bbc0L    # -4.2939591969303996E225

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->rN()V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aide/ui/debugger/a;->Hw(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->er()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public VH()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/debugger/Debugger$c;",
            ">;"
        }
    .end annotation

    const-wide v6, -0xf5c3546faf1fefL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf5c3546faf1fefL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->J0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    new-instance v5, Lcom/aide/ui/debugger/Debugger$c;

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->J0:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->J8:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->Ws:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/aide/ui/debugger/Debugger$c;-><init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v4
.end method

.method public Ws()V
    .registers 5

    const-wide v2, 0xcad9f8dd13cd328L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xcad9f8dd13cd328L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->u7:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public XL()V
    .registers 5

    const-wide v2, -0x2b932e6b4282c461L    # -4.924505439823276E98

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2b932e6b4282c461L    # -4.924505439823276E98

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->rN()V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aide/ui/debugger/a;->v5(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->er()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Zo()I
    .registers 5

    const-wide v2, 0x3fef3a48944b9400L    # 0.975864686621776

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3fef3a48944b9400L    # 0.975864686621776

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/debugger/Debugger;->we:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public aM()V
    .registers 5

    const-wide v2, -0x63b19397b85f6bbL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x63b19397b85f6bbL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->rN()V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aide/ui/debugger/a;->Zo(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->er()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public gn()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/debugger/Debugger$b;",
            ">;"
        }
    .end annotation

    const-wide v6, -0x47efff390e90f618L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x47efff390e90f618L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->j3:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->j3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    new-instance v5, Lcom/aide/ui/debugger/Debugger$b;

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->j3:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger;->U2:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/aide/ui/debugger/Debugger$b;-><init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v4
.end method

.method public j3()V
    .registers 5

    const-wide v2, 0x2212d1ca99b4dc0dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2212d1ca99b4dc0dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->VH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aide/ui/debugger/a;->DW(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->yS()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-wide v6, 0x815a1efb0e54645L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x815a1efb0e54645L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Zk;->lg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x2869542fcd517c50L    # -8.723521673542454E113

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2869542fcd517c50L    # -8.723521673542454E113

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/ui/debugger/Debugger;->Hw(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->gW()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/ui/debugger/Debugger;->j6(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->u7:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    const-wide v2, 0x10e5bf63069ccf19L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10e5bf63069ccf19L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ADRT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->U2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->lg()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ADRT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-static {p1, p2, v0}, Lcom/aide/ui/debugger/a;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/ui/debugger/Debugger;->j6(Z)V

    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "ADRT"

    const-string v1, "sendDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v0, :cond_4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd08b1a059e7eec4L    # -6.365418474306345E245

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p4, p0, Lcom/aide/ui/debugger/Debugger;->QX:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/aide/ui/debugger/Debugger;->XL:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/aide/ui/debugger/Debugger;->aM:Ljava/util/ArrayList;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    :cond_1
    return-void
.end method

.method public j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x11af803a8300899bL

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    const/4 v3, 0x7

    aput-object p8, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBreakpointHit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ADRT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->U2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v4}, Lcom/aide/ui/debugger/Debugger;->j6(Z)V

    iput-boolean v4, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->tp:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/debugger/Debugger;->EQ:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/debugger/Debugger;->we:I

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/aide/ui/debugger/Debugger;->tp:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/debugger/Debugger;->we:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p3, p0, Lcom/aide/ui/debugger/Debugger;->j3:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/aide/ui/debugger/Debugger;->Mr:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/aide/ui/debugger/Debugger;->U2:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/aide/ui/debugger/Debugger;->J0:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/aide/ui/debugger/Debugger;->J8:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/aide/ui/debugger/Debugger;->Ws:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/aide/ui/MainActivity;->Zo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1, p2, v0}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDisconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ADRT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public j6(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 10

    const-wide v2, 0x56cf26334261232fL    # 1.4631053755878396E110

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x56cf26334261232fL    # 1.4631053755878396E110

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v4, p2, v0

    invoke-static {v4}, Labcd/Gk;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide v2, 0x509f3dcc12a5645L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x509f3dcc12a5645L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Zk;->lg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_9
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->gW()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->Hw:Landroid/content/Context;

    iget-object v1, p0, Lcom/aide/ui/debugger/Debugger;->v5:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/debugger/Debugger;->Zo:Ljava/util/ArrayList;

    invoke-static {v0, v1, v4}, Lcom/aide/ui/debugger/a;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public j6(Ljava/lang/String;Z)V
    .registers 10

    const-wide v2, -0x2815e9d1889c626bL    # -3.212081899505168E115

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x2815e9d1889c626bL    # -3.212081899505168E115

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->j6()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/aide/ui/debugger/Debugger;->Hw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/debugger/Debugger;->lg()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6(Ljava/lang/String;I)Z
    .registers 10

    const-wide v2, -0x66bd505d9ba394cL    # -4.468854932882486E277

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x66bd505d9ba394cL    # -4.468854932882486E277

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v1, p0, Lcom/aide/ui/debugger/Debugger;->gn:Z

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/aide/ui/debugger/Debugger;->we:I

    if-eq p2, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public tp()Z
    .registers 5

    const-wide v2, 0x1a4e522f73fe9c28L    # 5.708692841967586E-182

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1a4e522f73fe9c28L    # 5.708692841967586E-182

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->VH:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x19f64f688709a397L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19f64f688709a397L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger;->rN:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Labcd/Tl;
    .registers 9

    const-wide v6, 0x1e4c42cea75b61a0L    # 9.815204526450467E-163

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e4c42cea75b61a0L    # 9.815204526450467E-163

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Tl;

    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->Zo()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/aide/ui/debugger/Debugger;->Zo()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public we()Z
    .registers 5

    const-wide v2, -0x272359f907d3b9a0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x272359f907d3b9a0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/debugger/Debugger;->u7:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
