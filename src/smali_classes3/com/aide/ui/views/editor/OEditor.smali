.class public Lcom/aide/ui/views/editor/OEditor;
.super Lcom/aide/ui/views/editor/OConsole;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/views/editor/OEditor$a;,
        Lcom/aide/ui/views/editor/OEditor$e;
    }
.end annotation


# static fields
.field private static IS:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final a5:Z
    .annotation runtime Labcd/ru;
        field = 0x38508cddd63797ebL
    .end annotation
.end field

.field private static sM:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x11c7f324ea9653e4L
    .end annotation
.end field

.field private static ys:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private AE:F
    .annotation runtime Labcd/ru;
        field = -0x2b1b1b08fd641e9dL
    .end annotation
.end field

.field private An:Z
    .annotation runtime Labcd/ru;
        field = 0x37f3638c32db6edcL
    .end annotation
.end field

.field private BR:Lcom/aide/ui/views/editor/OEditor$b;
    .annotation runtime Labcd/ru;
        field = -0x36c0496a55c6a02cL
    .end annotation
.end field

.field private Nh:Ljava/util/Hashtable;
    .annotation runtime Labcd/ru;
        field = 0x1f986e7e19a70761L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/aide/ui/views/editor/OEditor$c;",
            "Lcom/aide/ui/views/editor/c;",
            ">;"
        }
    .end annotation
.end field

.field private Pa:Lcom/aide/ui/views/editor/OEditor$d;
    .annotation runtime Labcd/ru;
        field = 0x48aae5ce8740c78cL
    .end annotation
.end field

.field private Za:Z
    .annotation runtime Labcd/ru;
        field = -0xbb14ecaaa3e7f79L
    .end annotation
.end field

.field private ce:Z
    .annotation runtime Labcd/ru;
        field = 0x353dca286fe5b67L
    .end annotation
.end field

.field private gG:Ljava/util/Hashtable;
    .annotation runtime Labcd/ru;
        field = -0x3c7cb82309490ac4L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/aide/ui/views/editor/OEditor$c;",
            "Lcom/aide/ui/views/editor/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1e0d0fcacee55538L
    .end annotation

    const-wide v0, 0x1fdb27b5d2c98b20L

    const/4 v2, 0x0

    :try_start_6
    const-class v3, Lcom/aide/ui/views/editor/OEditor;

    const-wide v4, -0x617ac3500286c73bL

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v3, :cond_17

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    sput-object v2, Lcom/aide/ui/views/editor/OEditor;->sM:Ljava/lang/String;

    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Windows"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    sput-boolean v3, Lcom/aide/ui/views/editor/OEditor;->a5:Z
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x25a149e308922e1L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/OConsole;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/aide/ui/views/editor/OEditor;->ce:Z
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x9f08b0bd1d8924L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/OConsole;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/OEditor;->ce:Z
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_25

    const-wide v2, 0x9f08b0bd1d8924L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1f36901ad5ac5fd1L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/editor/OConsole;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/OEditor;->ce:Z
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x1f36901ad5ac5fd1L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method private DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4a3fca98fe002ef4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1bb3a83f612223f7L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/editor/OEditor;->gG:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_23

    const-wide v2, 0x1bb3a83f612223f7L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->SI()V

    return-void
.end method

.method static synthetic DW(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/OEditor;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x10d152f98bb51abbL
    .end annotation

    const-wide v0, -0x6e477e8cc1ca58L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method static synthetic FH(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->sh()V

    return-void
.end method

.method static synthetic Hw(Lcom/aide/ui/views/editor/OEditor;)Lcom/aide/ui/views/editor/OEditor$b;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->getInternalState()Lcom/aide/ui/views/editor/OEditor$b;

    move-result-object p0

    return-object p0
.end method

.method private J0(I)I
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xa1babb6cb9b858L
    .end annotation

    const-wide v0, 0x855511d4850e4bbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/4 v2, 0x0

    if-gez p1, :cond_10

    return v2

    :cond_10
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-ge v2, v4, :cond_42

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v2, p1}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2f

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2c

    return v3

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_2f
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getTabSize()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getTabSize()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getTabSize()I

    move-result v4
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_43

    mul-int v3, v3, v4

    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_42
    return v3

    :catchall_43
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_50

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v2

    :goto_52
    goto :goto_51
.end method

.method private KD()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x6893a1b0702b244L
    .end annotation

    const-wide v0, -0x5d69d6bbd100d0dL  # -2.879946551248843E280

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OEditor;->gG:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OEditor;->Nh:Ljava/util/Hashtable;

    new-instance v2, Lcom/aide/ui/views/editor/OEditor$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/views/editor/OEditor$d;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OEditor;->Pa:Lcom/aide/ui/views/editor/OEditor$d;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/OEditor;->Pa:Lcom/aide/ui/views/editor/OEditor$d;

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g$f;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/views/editor/O;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/O;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/h;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->j6:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/ba;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/ba;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->DW:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/ka;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/ka;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->FH:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/la;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/la;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->Hw:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/ma;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/ma;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->v5:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/na;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/na;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->Zo:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/oa;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/oa;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->VH:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/pa;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/pa;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->gn:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/qa;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/qa;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->u7:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/E;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/E;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->tp:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/F;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/F;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->EQ:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/G;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/G;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->we:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/H;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/H;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->J0:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/I;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/I;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->Ws:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->j6:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->QX:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->DW:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->XL:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->FH:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->aM:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->Hw:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->j3:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->v5:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->Mr:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->Zo:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->U2:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->VH:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->a8:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->gn:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->lg:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->u7:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->rN:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->tp:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->er:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->EQ:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->yS:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->we:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->gW:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/P;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->J0:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/OEditor$a;

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/views/editor/P;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$a;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->BT:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/J;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/J;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->vy:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/K;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/K;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->P8:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/L;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/L;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->ei:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/M;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/M;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->vJ:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/N;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/N;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->g3:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/Q;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/Q;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->Mz:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/S;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/S;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->I:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/T;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/T;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->nw:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/U;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/U;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->SI:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/V;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/V;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->KD:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/W;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/W;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->ca:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/X;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/X;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->x9:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/Y;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/Y;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->dx()V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->ro:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/Z;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/Z;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->cn:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/aa;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/aa;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->sh:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/ca;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/ca;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->cb:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/da;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/da;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->dx:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/ea;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/ea;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->sG:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/fa;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/fa;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->ef:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/ga;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/ga;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->Sf:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/ha;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/ha;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->ef:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/g;->er()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/aide/ui/views/editor/c;->setEnabled(Z)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->Sf:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/g;->rN()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/aide/ui/views/editor/c;->setEnabled(Z)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->Qq:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/ia;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/ia;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->sy:Lcom/aide/ui/views/editor/OEditor$c;

    new-instance v3, Lcom/aide/ui/views/editor/ja;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/editor/ja;-><init>(Lcom/aide/ui/views/editor/OEditor;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->sy:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/aide/ui/views/editor/c;->setEnabled(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->setMultipleMouseClickSelects(Z)V
    :try_end_2bc
    .catchall {:try_start_5 .. :try_end_2bc} :catchall_2bd

    return-void

    :catchall_2bd
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_2c5

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c5
    throw v2
.end method

.method private SI()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5dedf9859461aedL
    .end annotation

    const-wide v0, 0x146358eb6afe77cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedColumn()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    add-int/lit8 v3, v3, -0x1

    :cond_24
    :goto_24
    if-gt v2, v3, :cond_35

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->J0(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getTabSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v2, v4}, Lcom/aide/ui/views/editor/OEditor;->we(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_35
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->cn()V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method

.method static synthetic VH(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->ei()V

    return-void
.end method

.method static synthetic Zo(Lcom/aide/ui/views/editor/OEditor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/views/editor/OEditor;->Za:Z

    return p0
.end method

.method private cb()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4723588aec87e535L
    .end annotation

    const-wide v0, 0x13e6426ec0cbbf54L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    move v3, v2

    goto :goto_29

    :cond_20
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedColumn()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_29

    add-int/lit8 v3, v3, -0x1

    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->EQ(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v3

    if-le v2, v3, :cond_58

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    :cond_58
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_60

    return-void

    :catchall_60
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_68

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_68
    throw v2
.end method

.method private cn()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x4bdefe9d69f7e8e5L
    .end annotation

    const-wide v0, -0x4c6c82824f3f56c8L  # -3.032195174471587E-60

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedLine()I

    move-result v4

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v3, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    const/4 v5, 0x0

    :goto_23
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedColumn()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2c

    const/4 v8, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v8, 0x0

    :goto_2d
    invoke-interface {v2}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v9

    sub-int/2addr v9, v7

    if-ne v4, v9, :cond_36

    const/4 v9, 0x1

    goto :goto_37

    :cond_36
    const/4 v9, 0x0

    :goto_37
    if-eqz v5, :cond_50

    if-eqz v9, :cond_43

    invoke-interface {v2, v4}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    invoke-virtual {p0, v2, v4, v7}, Lcom/aide/ui/views/editor/OConsole;->DW(IIZ)V

    goto :goto_49

    :cond_43
    if-nez v8, :cond_49

    add-int/2addr v4, v7

    invoke-virtual {p0, v6, v4, v7}, Lcom/aide/ui/views/editor/OConsole;->DW(IIZ)V

    :cond_49
    :goto_49
    invoke-virtual {p0, v6, v3}, Lcom/aide/ui/views/editor/OConsole;->Zo(II)V

    invoke-virtual {p0, v6, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    goto :goto_6d

    :cond_50
    invoke-virtual {p0, v6, v3, v7}, Lcom/aide/ui/views/editor/OConsole;->DW(IIZ)V

    if-eqz v9, :cond_64

    invoke-interface {v2, v4}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v3

    invoke-virtual {p0, v3, v4}, Lcom/aide/ui/views/editor/OConsole;->Zo(II)V

    invoke-interface {v2, v4}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    invoke-virtual {p0, v2, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    goto :goto_6d

    :cond_64
    if-nez v8, :cond_6d

    add-int/2addr v4, v7

    invoke-virtual {p0, v6, v4}, Lcom/aide/ui/views/editor/OConsole;->Zo(II)V

    invoke-virtual {p0, v6, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    :cond_6d
    :goto_6d
    invoke-virtual {p0, v7}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V
    :try_end_70
    .catchall {:try_start_5 .. :try_end_70} :catchall_71

    return-void

    :catchall_71
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_79

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_79
    throw v2
.end method

.method private dx()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1078a277a7a703bL
    .end annotation

    const-wide v0, 0x660a96b1b296ca0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/OEditor;->Nh:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/c;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/aide/ui/views/editor/c;->setEnabled(Z)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_27

    goto :goto_12

    :cond_26
    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    goto :goto_31

    :goto_30
    throw v2

    :goto_31
    goto :goto_30
.end method

.method private ei()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x27ce9cffb184a960L
    .end annotation

    const-wide v0, -0x2a821f4e0f3f083L  # -6.097335497766233E295

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    move v3, v2

    goto :goto_29

    :cond_20
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedColumn()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_29

    add-int/lit8 v3, v3, -0x1

    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->tp(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v3

    if-le v2, v3, :cond_58

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    :cond_58
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_60

    return-void

    :catchall_60
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_68

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_68
    throw v2
.end method

.method private getIntendedColumnX()F
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4128e18fbfa44950L
    .end annotation

    const-wide v0, 0x184f136823e7edd9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/views/editor/OEditor;->AE:F
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method private getInternalState()Lcom/aide/ui/views/editor/OEditor$b;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5237029c079867e5L
    .end annotation

    const-wide v0, -0x3fb149e9dd0c3198L  # -61.42255055336574

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/editor/OEditor;->BR:Lcom/aide/ui/views/editor/OEditor$b;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method private j6(Lcom/aide/ui/views/editor/OEditor$c;Lcom/aide/ui/views/editor/c;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xf5fcc712f77aa9bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x119fc6cdc8bfa654L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/editor/OEditor;->Nh:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_23

    const-wide v2, -0x119fc6cdc8bfa654L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->cb()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/OEditor;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/OEditor;->setIntendedColumnX(F)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/OEditor;->setInternalState(Lcom/aide/ui/views/editor/OEditor$b;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/OEditor;->DW(Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2cb494b99a98fd28L
    .end annotation

    const-wide v0, -0x15eaef66c797d8e7L  # -1.0319418310844821E203

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/OEditor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/editor/OEditor;->Za:Z

    return p1
.end method

.method private nw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x35718fc303417393L
    .end annotation

    const-wide v0, -0x2d6e43fba17f1710L  # -5.644639952802454E89

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->v5()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedColumn()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getSelectedRegion()Labcd/hm;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    :cond_2b
    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method private ro()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x565d421c2275c970L
    .end annotation

    const-wide v0, 0x41ddb42c340bfe1L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v3

    if-nez v3, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {v2}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3c

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_39

    add-int/lit8 v4, v4, 0x1

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_3c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_64

    :try_start_45
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v5

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v6

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v7

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->tp()Z

    move-result v8

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getTabSize()I

    move-result v9

    move-object v11, p0

    invoke-virtual/range {v5 .. v11}, Lcom/aide/ui/views/editor/g;->j6(IIZILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_5d} :catch_5e
    .catchall {:try_start_45 .. :try_end_5d} :catchall_64

    goto :goto_5f

    :catch_5e
    move-exception v2

    :goto_5f
    add-int/2addr v4, v3

    :try_start_60
    invoke-virtual {p0, v3, v4}, Lcom/aide/ui/views/editor/OEditor;->gn(II)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    return-void

    :catchall_64
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_6c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6c
    goto :goto_6e

    :goto_6d
    throw v2

    :goto_6e
    goto :goto_6d
.end method

.method private setIntendedColumnX(F)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1258e3fa375ac7e1L
    .end annotation

    const-wide v0, 0x9f72f69f9eebdd8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput p1, p0, Lcom/aide/ui/views/editor/OEditor;->AE:F
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method private setInternalState(Lcom/aide/ui/views/editor/OEditor$b;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4741dd6568a31780L
    .end annotation

    const-wide v0, 0x4d88c735642277e3L  # 3.2618058100547277E65

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/OEditor;->BR:Lcom/aide/ui/views/editor/OEditor$b;

    if-eq v2, p1, :cond_19

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/OEditor;->BR:Lcom/aide/ui/views/editor/OEditor$b;
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method private sh()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x25228e01fffa6f58L
    .end annotation

    const-wide v0, 0x3e56bd55f7a3a47bL  # 2.117789630547032E-8

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedColumn()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    add-int/lit8 v3, v3, -0x1

    :cond_24
    :goto_24
    if-gt v2, v3, :cond_35

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->J0(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getTabSize()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v2, v4}, Lcom/aide/ui/views/editor/OEditor;->we(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_35
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->cn()V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method

.method static synthetic v5(Lcom/aide/ui/views/editor/OEditor;)F
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->getIntendedColumnX()F

    move-result p0

    return p0
.end method

.method private we(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1cf64d4861145d93L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x4633a86347db0c0L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x0

    if-gez p2, :cond_1a

    const/4 p2, 0x0

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0x9

    if-ge v1, v2, :cond_39

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v2

    if-eq v2, v4, :cond_36

    if-eq v2, v3, :cond_36

    goto :goto_39

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1, p0}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->tp()Z

    move-result v1

    if-eqz v1, :cond_49

    move v1, p2

    const/4 v2, 0x0

    goto :goto_55

    :cond_49
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getTabSize()I

    move-result v1

    rem-int v1, p2, v1

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getTabSize()I

    move-result v2

    div-int v2, p2, v2

    :goto_55
    add-int v5, v1, v2

    new-array v5, v5, [C
    :try_end_59
    .catchall {:try_start_0 .. :try_end_59} :catchall_73

    const/4 v6, 0x0

    :goto_5a
    if-ge v6, v2, :cond_61

    aput-char v4, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    :cond_61
    const/4 v4, 0x0

    :goto_62
    if-ge v4, v1, :cond_6b

    add-int v6, v4, v2

    aput-char v3, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    :cond_6b
    :try_start_6b
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(II[CLjava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_73

    return-void

    :catchall_73
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v0, :cond_8d

    const-wide v1, 0x4633a86347db0c0L

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8d
    goto :goto_8f

    :goto_8e
    throw v6

    :goto_8f
    goto :goto_8e
.end method


# virtual methods
.method public BT()V
    .registers 5

    const-wide v0, -0x4ad7512dd64ca47cL  # -1.2885072053029102E-52

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getSelectedRegion()Labcd/hm;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public DW(CII)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1ecdbcb873c6abf0L  # -1.6047423829041922E160

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_3b

    const-wide v2, -0x1ecdbcb873c6abf0L  # -1.6047423829041922E160

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public EQ(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x24baeb929ffaf93L  # -3.321893665501067E297

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x24baeb929ffaf93L  # -3.321893665501067E297

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public J2()Z
    .registers 2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/g;->J1()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->J0()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public Mr()V
    .registers 5

    const-wide v0, 0x7a07b2394052540L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->setInternalState(Lcom/aide/ui/views/editor/OEditor$b;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->nw()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    :cond_28
    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public P8()V
    .registers 5

    const-wide v0, -0x2090ca82541b5f30L  # -5.1079540014553813E151

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/ui/views/editor/g;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Labcd/fm;->j6()I

    move-result v3

    invoke-virtual {v2}, Labcd/fm;->DW()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public U2()V
    .registers 10

    const-wide v0, -0x156edf8d755621afL  # -2.1478896333138737E205

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->setInternalState(Lcom/aide/ui/views/editor/OEditor$b;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3a

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedColumn()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_33

    add-int/lit8 v3, v3, -0x1

    :cond_33
    invoke-virtual {p0, v4}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_3b

    :cond_3a
    move v3, v2

    :goto_3b
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/g;->BT()V

    :goto_42
    if-lt v2, v3, :cond_93

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_7d

    if-nez v2, :cond_67

    invoke-virtual {p0, v4, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    if-lez v5, :cond_90

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v6

    invoke-virtual {v6, v4, v2, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    goto :goto_90

    :cond_67
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v4, v6}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    if-lez v5, :cond_75

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v7

    invoke-virtual {v7, v4, v2, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    :cond_75
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v5

    invoke-virtual {v5, v6, p0}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V

    goto :goto_90

    :cond_7d
    invoke-virtual {p0, v4, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    if-lez v5, :cond_89

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v6

    invoke-virtual {v6, v4, v2, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    :cond_89
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v5

    invoke-virtual {v5, v2, p0}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V

    :cond_90
    :goto_90
    add-int/lit8 v2, v2, -0x1

    goto :goto_42

    :cond_93
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V
    :try_end_9a
    .catchall {:try_start_5 .. :try_end_9a} :catchall_9b

    :cond_9a
    return-void

    :catchall_9b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_a3

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_a3
    goto :goto_a5

    :goto_a4
    throw v2

    :goto_a5
    goto :goto_a4
.end method

.method public VH(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x31a4cc23aeafab5dL  # 1.5066780510846917E-69

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x31a4cc23aeafab5dL  # 1.5066780510846917E-69

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public a8()V
    .registers 9

    const-wide v0, -0x6e0529aaa93d4b4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_41

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->DW:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->setInternalState(Lcom/aide/ui/views/editor/OEditor$b;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->tp()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getTabSize()I

    move-result v4

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v4, :cond_41

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v3, v2, v7, p0}, Lcom/aide/ui/views/editor/g;->j6(IICLjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_38
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v3, v2, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(IICLjava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_42

    :cond_41
    return-void

    :catchall_42
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_4a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4a
    goto :goto_4c

    :goto_4b
    throw v2

    :goto_4c
    goto :goto_4b
.end method

.method public aM()V
    .registers 8

    const-wide v0, -0x2f111320ee825790L  # -7.333688600571908E81

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->setInternalState(Lcom/aide/ui/views/editor/OEditor$b;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getLastSelectedColumn()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_35

    add-int/lit8 v3, v3, -0x1

    :cond_35
    invoke-virtual {p0, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->VH(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->cn()V

    goto :goto_94

    :cond_43
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/aide/ui/views/editor/OEditor;->VH(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    if-gez v3, :cond_72

    goto :goto_73

    :cond_72
    move v5, v3

    :goto_73
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    if-le v5, v2, :cond_8d

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v5

    :cond_8d
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    invoke-virtual {p0, v5, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_94
    .catchall {:try_start_5 .. :try_end_94} :catchall_95

    :cond_94
    :goto_94
    return-void

    :catchall_95
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_9d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_9d
    throw v2
.end method

.method public er()Z
    .registers 5

    const-wide v0, -0x222e6f03e0387fe1L  # -8.568393534685239E143

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->er()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public gW()V
    .registers 5

    const-wide v0, -0x208c8947990d4bc0L  # -6.371246054720884E151

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->yS()Labcd/fm;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Labcd/fm;->j6()I

    move-result v3

    invoke-virtual {v2}, Labcd/fm;->DW()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public getEditorModel()Lcom/aide/ui/views/editor/g;
    .registers 5

    const-wide v0, -0x3e5381fae6df7654L  # -2.3901044456355035E8

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/g;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v2

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public gn(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x148864b23e3d961cL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x148864b23e3d961cL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public j3()V
    .registers 5

    const-wide v0, -0x20c90bd96b4beb45L  # -4.696029427087922E150

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->setInternalState(Lcom/aide/ui/views/editor/OEditor$b;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->v5()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;
    .registers 7

    const-wide v0, 0x26f8396046547c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/OEditor;->gG:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/aide/ui/views/editor/OEditor;->gG:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/c;

    return-object v2

    :cond_1d
    iget-object v2, p0, Lcom/aide/ui/views/editor/OEditor;->Nh:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/aide/ui/views/editor/OEditor;->Nh:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/c;

    return-object v2

    :cond_2e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown editor action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v2
.end method

.method public j6(C)V
    .registers 7

    const-wide v0, 0x1195207d6a4fb740L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedColumn()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->BT()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V

    :cond_36
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getOverwriteMode()Z

    move-result v2

    if-eqz v2, :cond_56

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->FH:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->setInternalState(Lcom/aide/ui/views/editor/OEditor$b;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p1, p0}, Lcom/aide/ui/views/editor/g;->DW(IICLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    goto :goto_6a

    :cond_56
    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->DW:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->setInternalState(Lcom/aide/ui/views/editor/OEditor$b;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p1, p0}, Lcom/aide/ui/views/editor/g;->j6(IICLjava/lang/Object;)V

    :goto_6a
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->DW(CII)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(CII)V
    :try_end_80
    .catchall {:try_start_5 .. :try_end_80} :catchall_81

    :cond_80
    return-void

    :catchall_81
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_8e

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8e
    throw v2
.end method

.method public j6(CII)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x32933fa5a058fcL

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x32933fa5a058fcL

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public lg()Z
    .registers 5

    const-wide v0, -0x907d87489992d68L  # -1.216952833490331E265

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/views/editor/OEditor;->An:Z

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->lg()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public rN()Z
    .registers 5

    const-wide v0, -0x27575cff13bf7b43L  # -1.2425429756086656E119

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->rN()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public setEditable(Z)V
    .registers 6

    const-wide v0, 0x1c2d5bc68587ba2bL  # 5.935076677673634E-173

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/views/editor/OEditor;->An:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public setModel(Lcom/aide/ui/views/editor/o;)V
    .registers 6

    const-wide v0, -0x70c276ded42610L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Lcom/aide/ui/views/editor/OConsole;->setModel(Lcom/aide/ui/views/editor/o;)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->KD()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public setMultipleMouseClickSelects(Z)V
    .registers 6

    const-wide v0, -0x1659b94eb9d10d8fL  # -8.525642395687081E200

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public tp(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x50b83e7e14e6b918L  # 7.186627341550389E80

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x50b83e7e14e6b918L  # 7.186627341550389E80

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public u7(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x1fb96f46151c60a8L  # -6.051034054280776E155

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v1

    if-ge v0, v1, :cond_44

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/aide/ui/views/editor/g;->FH(II)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3c

    const/16 v2, 0x20

    if-eq v1, v2, :cond_32

    return-void

    :cond_32
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v1

    :goto_36
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v0, v3, v2, p0}, Lcom/aide/ui/views/editor/g;->j6(IICLjava/lang/Object;)V

    goto :goto_41

    :cond_3c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v1
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_45

    goto :goto_36

    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_44
    return-void

    :catchall_45
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v1, :cond_5e

    const-wide v2, -0x1fb96f46151c60a8L  # -6.051034054280776E155

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v0

    :goto_60
    goto :goto_5f
.end method

.method public vy()V
    .registers 7

    const-wide v0, 0x23a7063afab5f653L  # 6.186985858801617E-137

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-nez v4, :cond_22

    if-eqz v2, :cond_2f

    :cond_22
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3}, Lcom/aide/ui/views/editor/OConsole;->DW(IIZ)V

    invoke-virtual {p0, v4, v2}, Lcom/aide/ui/views/editor/OConsole;->Zo(II)V

    invoke-virtual {p0, v4, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    invoke-virtual {p0, v3}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    :cond_2f
    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method public yS()V
    .registers 5

    const-wide v0, 0x8df4c0d79f6a4fdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor;->ys:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/OEditor;->setInternalState(Lcom/aide/ui/views/editor/OEditor$b;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->BT()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V

    :cond_32
    invoke-direct {p0}, Lcom/aide/ui/views/editor/OEditor;->ro()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    :cond_3c
    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor;->IS:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_45
    throw v2
.end method
