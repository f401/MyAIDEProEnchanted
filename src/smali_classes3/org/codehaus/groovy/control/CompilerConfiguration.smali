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
            "Ljava/util/Set<",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->J8:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->j3:Ljava/util/List;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Ljava/io/File;)V

    const-string v2, ""

    invoke-virtual {p0, v2}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH(Z)V

    invoke-virtual {p0, v2}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Z)V

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->DW(I)V

    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/codehaus/groovy/control/CompilerConfiguration;->DW(Z)V

    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(I)V

    :try_start_38
    const-string v3, "groovy.target.bytecode"

    invoke-static {v3, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3e} :catch_3f

    goto :goto_41

    :catch_3f
    move-exception v3

    move-object v3, v1

    :goto_41
    if-eqz v3, :cond_44

    goto :goto_48

    :cond_44
    invoke-static {}, Lorg/codehaus/groovy/control/CompilerConfiguration;->v5()Ljava/lang/String;

    move-result-object v3

    :goto_48
    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->v5(Ljava/lang/String;)V

    :try_start_4b
    const-string v3, "groovy.default.scriptExtension"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_52

    goto :goto_54

    :catch_52
    move-exception v3

    move-object v3, v1

    :goto_54
    if-eqz v3, :cond_57

    goto :goto_59

    :cond_57
    const-string v3, ".groovy"

    :goto_59
    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/control/CompilerConfiguration;->DW(Ljava/lang/String;)V

    :try_start_5c
    const-string v3, "file.encoding"

    const-string v4, "US-ASCII"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v3

    :goto_66
    :try_start_66
    const-string v3, "groovy.source.encoding"

    invoke-static {v3, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_6d

    goto :goto_6e

    :catch_6d
    move-exception v3

    :goto_6e
    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->Hw(Ljava/lang/String;)V

    :try_start_71
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Ljava/io/PrintWriter;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7b} :catch_7c

    goto :goto_7d

    :catch_7c
    move-exception v1

    :goto_7d
    :try_start_7d
    const-string v1, "groovy.target.directory"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->Zo(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_88} :catch_89

    goto :goto_8a

    :catch_89
    move-exception v1

    :cond_8a
    :goto_8a
    :try_start_8a
    const-string v1, "groovy.target.indy"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_90} :catch_91

    goto :goto_92

    :catch_91
    move-exception v1

    :goto_92
    sget-object v1, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH:Lorg/codehaus/groovy/control/CompilerConfiguration;

    const-string v3, "indy"

    if-eqz v1, :cond_a9

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->FH()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    goto :goto_aa

    :cond_a9
    move v0, v2

    :goto_aa
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v0, :cond_b7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b7
    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6(Ljava/util/Map;)V

    return-void
.end method

.method private static v5()Ljava/lang/String;
    .registers 1

    :try_start_0
    const-string v0, "java.lang.annotation.Annotation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_8

    const-string v0, "1.5"

    return-object v0

    :catch_8
    move-exception v0

    const-string v0, "1.4"

    return-object v0
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
            "Ljava/util/Map<",
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

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    :cond_5
    const/4 p1, 0x1

    :cond_6
    iput p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->Hw:I

    return-void
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

    if-nez p1, :cond_4

    const-string p1, "US-ASCII"

    :cond_4
    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->v5:Ljava/lang/String;

    return-void
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->VH:Ljava/io/File;

    goto :goto_13

    :cond_10
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->VH:Ljava/io/File;

    :goto_13
    return-void
.end method

.method public j6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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

    move-result p1

    iput p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->QX:I

    return-void
.end method

.method public j6(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->VH:Ljava/io/File;

    return-void
.end method

.method public j6(Ljava/io/PrintWriter;)V
    .registers 3

    if-nez p1, :cond_9

    new-instance p1, Ljava/io/PrintWriter;

    sget-object v0, Lorg/codehaus/groovy/control/io/NullWriter;->j6:Lorg/codehaus/groovy/control/io/NullWriter;

    invoke-direct {p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :cond_9
    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->Zo:Ljava/io/PrintWriter;

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->gn:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->gn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public j6(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->aM:Ljava/util/Map;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "provided option map must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->tp:Z

    return-void
.end method

.method public v5(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilerConfiguration;->XL:Ljava/lang/String;

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_13
    return-void
.end method
