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
    .registers 5

    const-wide v0, -0x26532fe3199dbf1fL  # -9.523483305966733E123

    const-wide v2, 0x145f29a03b94c879L

    const-class v4, Lcom/aide/uidesigner/p;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V
    .registers 6

    iput-object p1, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/aide/uidesigner/Pa;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/aide/uidesigner/p;->Mr:Z

    return-void
.end method


# virtual methods
.method protected J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x156047f5c106d0f0L
    .end annotation

    const-wide v0, -0x1781fd19fd372a90L  # -2.1907980053853748E195

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/p;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->EQ(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->invalidate()V

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->VH()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2d

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->VH()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/uidesigner/s;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_2d
    iget-object v2, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->we(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/p;->j3:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method protected j6(Lcom/aide/uidesigner/s;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b014b18cc0926c0L
    .end annotation

    const-wide v0, 0x24bf094c80efabe0L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/p;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2, p1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Lcom/aide/uidesigner/s;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/p;->j3:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected j6(Z)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1bbba9c9c83a9428L
    .end annotation

    const-wide v0, -0x3e40bb46d8b962a4L  # -5.245975432758386E8

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/p;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v2, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->u7(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz p1, :cond_4f

    iget-boolean v2, p0, Lcom/aide/uidesigner/p;->Mr:Z

    if-eqz v2, :cond_4f

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/uidesigner/p;->Mr:Z

    iget-object v3, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    const-string v4, "unlock the UI designer"

    invoke-static {v3, v2, v4, v2, v2}, Lcom/aide/common/c;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V

    goto :goto_4f

    :cond_2a
    iget-object v2, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_50

    if-eqz v2, :cond_4f

    :try_start_32
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->gn(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Lcom/aide/uidesigner/Pa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/uidesigner/Pa;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_4d} :catch_4e
    .catchall {:try_start_32 .. :try_end_4d} :catchall_50

    goto :goto_4f

    :catch_4e
    move-exception p1

    :cond_4f
    :goto_4f
    return-void

    :catchall_50
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/p;->j3:Z

    if-eqz v3, :cond_5d

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v2
.end method

.method protected we()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x643cccc7fca0319L
    .end annotation

    const-wide v0, -0x247bd29e4b144b3bL  # -7.160948603164397E132

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/p;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/p;->U2:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_22

    if-eqz v3, :cond_17

    const-string v3, "添加..."

    goto :goto_19

    .line 99
    :cond_17
    const-string v3, "Add..."

    .line 0
    :goto_19
    :try_start_19
    new-instance v4, Lcom/aide/uidesigner/o;

    invoke-direct {v4, p0}, Lcom/aide/uidesigner/o;-><init>(Lcom/aide/uidesigner/p;)V

    invoke-static {v2, v3, v4}, Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_22

    return-void

    .line 99
    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/p;->j3:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method
