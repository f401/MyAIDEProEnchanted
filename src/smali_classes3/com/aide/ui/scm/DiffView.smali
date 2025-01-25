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
    .registers 3

    const-class v0, Lcom/aide/ui/scm/DiffView;

    const-wide v1, -0x1ea4e2f5222e00bdL  # -9.529770390093773E160

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xdd0c13b712fcbc7L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/scm/DiffView;->QX:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/ui/scm/DiffView;->rN()V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x5eb09b72c7fcb7cL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView;->QX:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/ui/scm/DiffView;->rN()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x5eb09b72c7fcb7cL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x29db0431617cb8c1L  # 4.601386185545751E-107

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView;->QX:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/ui/scm/DiffView;->rN()V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_38

    const-wide v2, 0x29db0431617cb8c1L  # 4.601386185545751E-107

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x2f4fd5ef332f41ccL  # -4.791552641470841E80

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_50

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_55

    if-nez v0, :cond_1a

    goto :goto_50

    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Labcd/FileSystemUtils;->lg(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_47
    .catchall {:try_start_1a .. :try_end_23} :catchall_55

    const/16 v2, 0x400

    :try_start_25
    new-array v2, v2, [C

    new-instance v3, Lcom/aide/ui/scm/c;

    invoke-direct {v3, p0, v0, p2}, Lcom/aide/ui/scm/c;-><init>(Lcom/aide/ui/scm/DiffView;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    invoke-static {v1, v3, v2}, Lcom/aide/ui/views/editor/ra;->j6(Ljava/io/Reader;Lcom/aide/ui/views/editor/ra$a;[C)[C

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_42

    goto :goto_34

    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    return-object v0

    :catchall_42
    move-exception v0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    throw v0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_47} :catch_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_55

    :catch_47
    move-exception v0

    :try_start_48
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_50
    :goto_50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_55

    return-object p1

    :catchall_55
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_66

    const-wide v2, -0x2f4fd5ef332f41ccL  # -4.791552641470841E80

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_66
    goto :goto_68

    :goto_67
    throw v0

    :goto_68
    goto :goto_67
.end method

.method private rN()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x22c807a67168f24fL
    .end annotation

    const-wide v0, -0x1a969ea5a7125b00L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/DiffView$a;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/DiffView$a;-><init>(Lcom/aide/ui/scm/DiffView;)V

    iput-object v2, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->setModel(Lcom/aide/ui/views/editor/o;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->setEditable(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setCaretVisibility(Z)V

    new-instance v2, Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aide/common/KeyStrokeDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/ui/scm/DiffView;->j3:Lcom/aide/common/KeyStrokeDetector;
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3f
    throw v2
.end method


# virtual methods
.method public a8()V
    .registers 5

    const-wide v0, 0x55f2f1be51f3790L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->setIsLightTheme(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->cn()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setTabSize(I)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->a8()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setInsertTabsAsSpaces(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->tp()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method

.method public getDiffViewModel()Lcom/aide/ui/scm/DiffView$a;
    .registers 5

    const-wide v0, -0x19957bbf6d6c73f5L  # -2.2534366672936284E185

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;
    .registers 5

    const-wide v0, 0x381b897a16f7940bL  # 2.0231006561096362E-38

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->j3:Lcom/aide/common/KeyStrokeDetector;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Lcom/aide/engine/FileHighlightings;)V
    .registers 14

    const-wide v0, -0xcf6fb3e547b7c1bL  # -1.366624285987913E246

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/DiffView;->QX:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_53

    :try_start_f
    iget v3, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    iget v4, p0, Lcom/aide/ui/scm/DiffView;->XL:I

    if-eq v3, v4, :cond_1d

    iget v3, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    iget v4, p0, Lcom/aide/ui/scm/DiffView;->aM:I

    if-eq v3, v4, :cond_1d

    monitor-exit v2

    return-void

    :cond_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_50

    :try_start_1e
    iget v2, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    iget v3, p0, Lcom/aide/ui/scm/DiffView;->XL:I

    if-ne v2, v3, :cond_37

    iget-object v4, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object v7, p1, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v8, p1, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object v9, p1, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object v10, p1, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget v11, p1, Lcom/aide/engine/FileHighlightings;->u7:I

    invoke-virtual/range {v4 .. v11}, Lcom/aide/ui/scm/DiffView$a;->j6(Z[Lcom/aide/engine/m;[I[I[I[II)V

    goto :goto_4f

    :cond_37
    iget v2, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    iget v3, p0, Lcom/aide/ui/scm/DiffView;->aM:I

    if-ne v2, v3, :cond_4f

    iget-object v4, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object v7, p1, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v8, p1, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object v9, p1, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object v10, p1, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget v11, p1, Lcom/aide/engine/FileHighlightings;->u7:I

    invoke-virtual/range {v4 .. v11}, Lcom/aide/ui/scm/DiffView$a;->j6(Z[Lcom/aide/engine/m;[I[I[I[II)V
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_53

    :cond_4f
    :goto_4f
    return-void

    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v3, :cond_5b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x6223db363e89403fL  # -7.636311438490249E-165

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
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

    if-nez v5, :cond_40

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "Only the line separators differ"

    invoke-virtual {p0, v0}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V

    goto :goto_79

    :cond_40
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    invoke-virtual {v0, v1, v3, v4}, Lcom/aide/ui/scm/DiffView$a;->j6(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/aide/ui/views/editor/OConsole;->setSoftMaxWidthRealColumn(I)V

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView;->QX:Ljava/lang/Object;

    monitor-enter v0
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_7d

    :try_start_58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_68

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Labcd/Xj;->DW(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/aide/ui/scm/DiffView;->XL:I

    :cond_68
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_78

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v1

    invoke-virtual {v1, p3, p2}, Labcd/Xj;->DW(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/aide/ui/scm/DiffView;->aM:I

    :cond_78
    monitor-exit v0

    :goto_79
    return-void

    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_58 .. :try_end_7c} :catchall_7a

    :try_start_7c
    throw v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v1, :cond_8f

    const-wide v2, -0x6223db363e89403fL  # -7.636311438490249E-165

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8f
    throw v0
.end method

.method public lg()V
    .registers 7

    const-wide v0, 0x239653e8461b4660L  # 2.999902907527776E-137

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/aide/ui/scm/DiffView$a;->j6(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public setInformationalContent(Ljava/lang/String;)V
    .registers 7

    const-wide v0, 0x25b49089e7d11fa8L  # 4.746813788041516E-127

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/DiffView;->Ws:Lcom/aide/ui/scm/DiffView$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n >>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/scm/DiffView$a;->j6(Lcom/aide/ui/scm/DiffView$a;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setSoftMaxWidthRealColumn(I)V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    return-void

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView;->J8:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v2
.end method
