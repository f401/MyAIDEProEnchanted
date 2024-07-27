.class public Lcom/aide/ui/scm/DiffView;
.super Lcom/aide/ui/views/CodeEditText;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/scm/DiffView$a;,
        Lcom/aide/ui/scm/DiffView$b;,
        Lcom/aide/ui/scm/DiffView$c;
    }
.end annotation


# static fields
.field private static J0:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static J8:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private QX:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x1e629e62e424761dL
    .end annotation
.end field

.field private Ws:Lcom/aide/ui/scm/DiffView$a;
    .annotation runtime Labcd/ru;
        field = 0x2a313c18c29e1885L
    .end annotation
.end field

.field private XL:I
    .annotation runtime Labcd/ru;
        field = -0x8d402a19edb1ef0L
    .end annotation
.end field

.field private aM:I
    .annotation runtime Labcd/ru;
        field = -0x8d4209463e53367L
    .end annotation
.end field

.field private j3:Lcom/aide/common/KeyStrokeDetector;
    .annotation runtime Labcd/ru;
        field = 0x29334e6c68e485d7L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1ea4e2f5222e00bdL    # -9.529770390093773E160

    const-class v0, Lcom/aide/ui/scm/DiffView;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, 0xdd0c13b712fcbc7L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xdd0c13b712fcbc7L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView;->QX:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/ui/scm/DiffView;->rN()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, -0x5eb09b72c7fcb7cL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5eb09b72c7fcb7cL

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView;->QX:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/ui/scm/DiffView;->rN()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    const-wide v8, 0x29db0431617cb8c1L    # 4.601386185545751E-107

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x29db0431617cb8c1L    # 4.601386185545751E-107

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView;->QX:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/ui/scm/DiffView;->rN()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5760130f932c5bc5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x2f4fd5ef332f41ccL    # -4.791552641470841E80

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2f4fd5ef332f41ccL    # -4.791552641470841E80

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Labcd/FileSystemUtils;->lg(Ljava/lang/String;)Ljava/io/Reader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    const/16 v4, 0x400

    :try_start_2
    new-array v4, v4, [C

    new-instance v5, Lcom/aide/ui/scm/c;

    invoke-direct {v5, p0, v0, p2}, Lcom/aide/ui/scm/c;-><init>(Lcom/aide/ui/scm/DiffView;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    invoke-static {v1, v5, v4}, Lcom/aide/ui/views/editor/ra;->j6(Ljava/io/Reader;Lcom/aide/ui/views/editor/ra$a;[C)[C

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v0, :cond_4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private rN()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x22c807a67168f24fL
    .end annotation

    const-wide v2, -0x1a969ea5a7125b00L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a969ea5a7125b00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/DiffView$a;

    invoke-direct {v0, p0}, Lcom/aide/ui/scm/DiffView$a;-><init>(Lcom/aide/ui/scm/DiffView;)V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->setModel(Lcom/aide/ui/views/editor/o;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->setEditable(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setCaretVisibility(Z)V

    new-instance v0, Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/common/KeyStrokeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView;->j3:Lcom/aide/common/KeyStrokeDetector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public a8()V
    .registers 5

    const-wide v2, 0x55f2f1be51f3790L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x55f2f1be51f3790L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/CodeEditText;->setIsLightTheme(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/aa;->cn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setTabSize(I)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/aa;->a8()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setInsertTabsAsSpaces(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/aa;->tp()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getDiffViewModel()Lcom/aide/ui/scm/DiffView$a;
    .registers 5

    const-wide v2, -0x19957bbf6d6c73f5L    # -2.2534366672936284E185

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19957bbf6d6c73f5L    # -2.2534366672936284E185

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;
    .registers 5

    const-wide v2, 0x381b897a16f7940bL    # 2.0231006561096362E-38

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x381b897a16f7940bL    # 2.0231006561096362E-38

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->j3:Lcom/aide/common/KeyStrokeDetector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/FileHighlightings;)V
    .registers 12

    const-wide v8, -0xcf6fb3e547b7c1bL    # -1.366624285987913E246

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xcf6fb3e547b7c1bL    # -1.366624285987913E246

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/scm/DiffView;->QX:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    iget v2, p0, Lcom/aide/ui/scm/DiffView;->XL:I

    if-eq v0, v2, :cond_2

    iget v0, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    iget v2, p0, Lcom/aide/ui/scm/DiffView;->aM:I

    if-eq v0, v2, :cond_2

    monitor-exit v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v0, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    iget v1, p0, Lcom/aide/ui/scm/DiffView;->XL:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object v3, p1, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v4, p1, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object v5, p1, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object v6, p1, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget v7, p1, Lcom/aide/engine/FileHighlightings;->u7:I

    invoke-virtual/range {v0 .. v7}, Lcom/aide/ui/scm/DiffView$a;->j6(Z[Lcom/aide/engine/m;[I[I[I[II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget v0, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    iget v1, p0, Lcom/aide/ui/scm/DiffView;->aM:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object v3, p1, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v4, p1, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object v5, p1, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object v6, p1, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget v7, p1, Lcom/aide/engine/FileHighlightings;->u7:I

    invoke-virtual/range {v0 .. v7}, Lcom/aide/ui/scm/DiffView$a;->j6(Z[Lcom/aide/engine/m;[I[I[I[II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-wide v6, -0x6223db363e89403fL    # -7.636311438490249E-165

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6223db363e89403fL    # -7.636311438490249E-165

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/scm/DiffView;->j6(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2, v2}, Lcom/aide/ui/scm/DiffView;->j6(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/aide/ui/scm/b;->j6(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Only the line separators differ"

    invoke-virtual {p0, v0}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    invoke-virtual {v0, v1, v3, v4}, Lcom/aide/ui/scm/DiffView$a;->j6(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/aide/ui/views/editor/OConsole;->setSoftMaxWidthRealColumn(I)V

    iget-object v2, p0, Lcom/aide/ui/scm/DiffView;->QX:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Labcd/Xj;->DW(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/scm/DiffView;->XL:I

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Labcd/Xj;->DW(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/scm/DiffView;->aM:I

    :cond_3
    monitor-exit v2

    goto :goto_0

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
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v0, :cond_4

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public lg()V
    .registers 7

    const-wide v4, 0x239653e8461b4660L    # 2.999902907527776E-137

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x239653e8461b4660L    # 2.999902907527776E-137

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aide/ui/scm/DiffView$a;->j6(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setInformationalContent(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0x25b49089e7d11fa8L    # 4.746813788041516E-127

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25b49089e7d11fa8L    # 4.746813788041516E-127

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/ui/scm/DiffView$a;->j6(Lcom/aide/ui/scm/DiffView$a;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setSoftMaxWidthRealColumn(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
