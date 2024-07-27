.class Lcom/aide/uidesigner/p;
.super Lcom/aide/uidesigner/Pa;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static aM:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static j3:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private Mr:Z
    .annotation runtime Labcd/ru;
        field = 0x20887cebd83a52dbL
    .end annotation
.end field

.field final U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/p;

    const-wide v2, -0x26532fe3199dbf1fL    # -9.523483305966733E123

    const-wide v4, 0x145f29a03b94c879L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V
    .registers 7

    iput-object p1, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/aide/uidesigner/Pa;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/uidesigner/p;->Mr:Z

    return-void
.end method


# virtual methods
.method protected J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x156047f5c106d0f0L
    .end annotation

    const-wide v2, -0x1781fd19fd372a90L    # -2.1907980053853748E195

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/p;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1781fd19fd372a90L    # -2.1907980053853748E195

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->VH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->VH()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/s;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->we(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/p;->j3:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected j6(Lcom/aide/uidesigner/s;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b014b18cc0926c0L
    .end annotation

    const-wide v2, 0x24bf094c80efabe0L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/p;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x24bf094c80efabe0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v0, p1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Lcom/aide/uidesigner/s;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/p;->j3:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6(Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1bbba9c9c83a9428L
    .end annotation

    const-wide v6, -0x3e40bb46d8b962a4L    # -5.245975432758386E8

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/p;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3e40bb46d8b962a4L    # -5.245975432758386E8

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/aide/uidesigner/p;->Mr:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/uidesigner/p;->Mr:Z

    iget-object v0, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    const/4 v1, 0x0

    const-string v2, "unlock the UI designer"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aide/common/c;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Lcom/aide/uidesigner/Pa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/uidesigner/Pa;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/p;->j3:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method protected we()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x643cccc7fca0319L
    .end annotation

    const-wide v4, -0x247bd29e4b144b3bL    # -7.160948603164397E132

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/p;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x247bd29e4b144b3bL    # -7.160948603164397E132

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6dfb\u52a0..."

    :goto_0
    :try_start_1
    new-instance v2, Lcom/aide/uidesigner/o;

    invoke-direct {v2, p0}, Lcom/aide/uidesigner/o;-><init>(Lcom/aide/uidesigner/p;)V

    invoke-static {v1, v0, v2}, Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v0, "Add..."

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/p;->j3:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
