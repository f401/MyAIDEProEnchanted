.class public Lorg/codehaus/groovy/control/CompilerConfiguration;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Ljava/lang/String;

.field public static final FH:Lorg/codehaus/groovy/control/CompilerConfiguration;

.field private static final j6:[Ljava/lang/String;


# instance fields
.field private EQ:I

.field private Hw:I

.field private J0:Ljava/lang/String;

.field private J8:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private QX:I

.field private VH:Ljava/io/File;

.field private Ws:Z

.field private XL:Ljava/lang/String;

.field private Zo:Ljava/io/PrintWriter;

.field private aM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/control/customizers/CompilationCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Z

.field private u7:Z

.field private v5:Ljava/lang/String;

.field private we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1.4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1.5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1.6"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "1.7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "1.8"

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6:[Ljava/lang/String;

    invoke-static {}, Lorg/codehaus/groovy/control/CompilerConfiguration;->v5()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/control/CompilerConfiguration;->DW:Ljava/lang/String;

    new-instance v0, Lorg/codehaus/groovy/control/CompilerConfiguration;

    invoke-direct {v0}, Lorg/codehaus/groovy/control/CompilerConfiguration;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH:Lorg/codehaus/groovy/control/CompilerConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->J8:Ljava/util/Set;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->j3:Ljava/util/List;

    invoke-virtual {p0, v2}, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH(I)V

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Ljava/io/File;)V

    const-string v3, ""

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH(Z)V

    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Z)V

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->DW(I)V

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->DW(Z)V

    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(I)V

    :try_start_0
    const-string v3, "groovy.target.bytecode"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->v5(Ljava/lang/String;)V

    :goto_1
    :try_start_1
    const-string v3, "groovy.default.scriptExtension"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->DW(Ljava/lang/String;)V

    :goto_3
    :try_start_2
    const-string v3, "file.encoding"

    const-string v4, "US-ASCII"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    :goto_4
    :try_start_3
    const-string v3, "groovy.source.encoding"

    invoke-static {v3, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_5
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/control/CompilerConfiguration;->Hw(Ljava/lang/String;)V

    :try_start_4
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Ljava/io/PrintWriter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    :try_start_5
    const-string v0, "groovy.target.directory"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/control/CompilerConfiguration;->Zo(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_0
    :goto_7
    :try_start_6
    const-string v0, "groovy.target.indy"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v0

    :goto_8
    sget-object v1, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH:Lorg/codehaus/groovy/control/CompilerConfiguration;

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH:Lorg/codehaus/groovy/control/CompilerConfiguration;

    invoke-virtual {v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH()Ljava/util/Map;

    move-result-object v3

    const-string v4, "indy"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v0, :cond_2

    const-string v0, "indy"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Ljava/util/Map;)V

    return-void

    :catch_0
    move-exception v3

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/codehaus/groovy/control/CompilerConfiguration;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->v5(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v3, v0

    goto :goto_2

    :cond_4
    const-string v3, ".groovy"

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->DW(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v3

    goto :goto_5

    :catch_6
    move-exception v3

    goto :goto_4
.end method

.method private static v5()Ljava/lang/String;
    .registers 1

    :try_start_0
    const-string v0, "java.lang.annotation.Annotation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "1.5"

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "1.4"

    goto :goto_0
.end method


# virtual methods
.method public DW(I)V
    .registers 2

    iput p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->EQ:I

    return-void
.end method

.method public DW(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->J0:Ljava/lang/String;

    return-void
.end method

.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->Ws:Z

    return-void
.end method

.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->tp:Z

    return v0
.end method

.method public FH()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->aM:Ljava/util/Map;

    return-object v0
.end method

.method public FH(I)V
    .registers 3

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->Hw:I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->Hw:I

    goto :goto_0
.end method

.method public FH(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->we:Ljava/lang/String;

    return-void
.end method

.method public FH(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->u7:Z

    return-void
.end method

.method public Hw()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->VH:Ljava/io/File;

    return-object v0
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_0

    const-string p1, "US-ASCII"

    :cond_0
    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->v5:Ljava/lang/String;

    return-void
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->VH:Ljava/io/File;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->VH:Ljava/io/File;

    goto :goto_0
.end method

.method public j6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/control/customizers/CompilationCustomizer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->j3:Ljava/util/List;

    return-object v0
.end method

.method public j6(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->QX:I

    return-void
.end method

.method public j6(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->VH:Ljava/io/File;

    return-void
.end method

.method public j6(Ljava/io/PrintWriter;)V
    .registers 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lorg/codehaus/groovy/control/io/NullWriter;->j6:Lorg/codehaus/groovy/control/io/NullWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->Zo:Ljava/io/PrintWriter;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->Zo:Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->gn:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->gn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j6(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->aM:Ljava/util/Map;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provided option map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->tp:Z

    return-void
.end method

.method public v5(Ljava/lang/String;)V
    .registers 6

    sget-object v1, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->XL:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
