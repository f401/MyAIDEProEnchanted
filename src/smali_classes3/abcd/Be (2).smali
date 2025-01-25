.class public Labcd/Be;
.super Labcd/BaseProjectConfig;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Be$l;,
        Labcd/Be$m;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSi<",
        "Labcd/Be;",
        ">;"
    }
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public EQ:I

.field public J0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Be$i;",
            ">;"
        }
    .end annotation
.end field

.field public J8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Be$i;",
            ">;"
        }
    .end annotation
.end field

.field public Mr:Labcd/Be$h;

.field public QX:I

.field public U2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/Be$j;",
            ">;"
        }
    .end annotation
.end field

.field public Ws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Be$i;",
            ">;"
        }
    .end annotation
.end field

.field public XL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Be$b;",
            ">;"
        }
    .end annotation
.end field

.field public aM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Be$b;",
            ">;"
        }
    .end annotation
.end field

.field public gn:Ljava/lang/String;

.field public j3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Be$b;",
            ">;"
        }
    .end annotation
.end field

.field public tp:I

.field public u7:Labcd/Be$a;

.field public we:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Labcd/Be$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Be;

    const-wide v1, 0x11db6810ff5ea0f0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x3b9d1497700f3d00L

    :try_start_6
    sget-boolean v3, Labcd/Be;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Labcd/Be$a;

    invoke-direct {v3, p0}, Labcd/Be$a;-><init>(Labcd/Be;)V

    iput-object v3, p0, Labcd/Be;->u7:Labcd/Be$a;

    const/4 v3, -0x1

    iput v3, p0, Labcd/Be;->tp:I

    iput v3, p0, Labcd/Be;->EQ:I

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Labcd/Be;->J0:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Labcd/Be;->J8:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Labcd/Be;->Ws:Ljava/util/List;

    iput v3, p0, Labcd/Be;->QX:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Be;->XL:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Be;->aM:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Be;->j3:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/Be;->U2:Ljava/util/Map;
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_57

    return-void

    :catchall_57
    move-exception v3

    sget-boolean v4, Labcd/Be;->VH:Z

    if-eqz v4, :cond_5f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5f
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x166412981cd3478L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1cc0f84c3408bdc0L

    :try_start_6
    sget-boolean v3, Labcd/Be;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Labcd/Be$a;

    invoke-direct {v3, p0}, Labcd/Be$a;-><init>(Labcd/Be;)V

    iput-object v3, p0, Labcd/Be;->u7:Labcd/Be$a;

    const/4 v3, -0x1

    iput v3, p0, Labcd/Be;->tp:I

    iput v3, p0, Labcd/Be;->EQ:I

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Labcd/Be;->J0:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Labcd/Be;->J8:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Labcd/Be;->Ws:Ljava/util/List;

    iput v3, p0, Labcd/Be;->QX:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Be;->XL:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Be;->aM:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Be;->j3:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/Be;->U2:Ljava/util/Map;
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_8f

    :try_start_56
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/codehaus/groovy/antlr/SourceBuffer;

    invoke-direct {v4}, Lorg/codehaus/groovy/antlr/SourceBuffer;-><init>()V

    new-instance v5, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;

    invoke-direct {v5, v3, v4}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;-><init>(Ljava/io/Reader;Lorg/codehaus/groovy/antlr/SourceBuffer;)V

    new-instance v6, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-direct {v6, v5}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5, v6}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->j6(Lgroovyjarjarantlr/CharScanner;)V

    invoke-static {v6}, Lorg/codehaus/groovy/antlr/parser/GroovyRecognizer;->j6(Lorg/codehaus/groovy/antlr/parser/GroovyLexer;)Lorg/codehaus/groovy/antlr/parser/GroovyRecognizer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/codehaus/groovy/antlr/parser/GroovyRecognizer;->j6(Lorg/codehaus/groovy/antlr/SourceBuffer;)V

    invoke-virtual {v5}, Lorg/codehaus/groovy/antlr/parser/GroovyRecognizer;->cb()V

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v5}, Lgroovyjarjarantlr/Parser;->DW()Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    :goto_7e
    if-eqz v3, :cond_8e

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Labcd/Be;->FH(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)V

    invoke-static {v3}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_89} :catch_8a
    .catchall {:try_start_56 .. :try_end_89} :catchall_8f

    goto :goto_7e

    :catch_8a
    move-exception v3

    :try_start_8b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    :cond_8e
    return-void

    :catchall_8f
    move-exception v3

    sget-boolean v4, Labcd/Be;->VH:Z

    if-eqz v4, :cond_97

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_97
    goto :goto_99

    :goto_98
    throw v3

    :goto_99
    goto :goto_98
.end method

.method private DW(Lgroovyjarjarantlr/collections/AST;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x63a3271aba64130dL
    .end annotation

    const-wide v0, -0x49f62270b93abe58L  # -2.2122338776785224E-48

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    if-nez v2, :cond_1f

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result p1

    goto :goto_23

    :cond_1f
    invoke-interface {v2}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result p1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    :goto_23
    return p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method private DW(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x12cac4fab2608683L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x7e6e5d69167c980L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_4e

    if-le v1, p2, :cond_4c

    const-string v1, ""

    move v2, p2

    :goto_1d
    :try_start_1d
    array-length v3, v0

    if-ge v2, v3, :cond_4b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_4e

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_4b
    return-object v1

    :cond_4c
    const/4 p1, 0x0

    return-object p1

    :catchall_4e
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_63

    const-wide v2, 0x7e6e5d69167c980L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    goto :goto_65

    :goto_64
    throw v0

    :goto_65
    goto :goto_64
.end method

.method private DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xb819bd1f6c1d04L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgroovyjarjarantlr/collections/AST;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x6af1a4017feb0121L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_98

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    invoke-static {v1}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_98

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    invoke-static {v1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    invoke-static {v1}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    :goto_53
    if-eqz v0, :cond_97

    invoke-static {v0}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v2

    const/16 v3, 0x36

    if-ne v2, v3, :cond_92

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    invoke-static {v3}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    invoke-static {v3}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    invoke-static {v3}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v4

    const/16 v5, 0x39

    if-ne v4, v5, :cond_8d

    invoke-static {v3}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    invoke-static {v3}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    invoke-static {v3}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    invoke-static {v3}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v3

    :goto_89
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_92

    :cond_8d
    invoke-static {v3}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v3

    goto :goto_89

    :cond_92
    :goto_92
    invoke-static {v0}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0
    :try_end_96
    .catchall {:try_start_0 .. :try_end_96} :catchall_9a

    goto :goto_53

    :cond_97
    return-object v1

    :cond_98
    const/4 p1, 0x0

    return-object p1

    :catchall_9a
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_ab

    const-wide v2, -0x6af1a4017feb0121L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ab
    goto :goto_ad

    :goto_ac
    throw v0

    :goto_ad
    goto :goto_ac
.end method

.method private DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xdf8e934bb94e848L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x9cd07853ca21aa1L  # -2.33344652172968E261

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p2, p3}, Labcd/Be;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Be;->U2:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Labcd/Be;->U2:Ljava/util/Map;

    new-instance v2, Labcd/Be$j;

    invoke-direct {v2, p0}, Labcd/Be$j;-><init>(Labcd/Be;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, p2, v1}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v2, p0, Labcd/Be;->U2:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Be$j;

    invoke-direct {p0, p1, v1, v0}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;Labcd/Be$j;)V
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3e

    :cond_3d
    return-void

    :catchall_3e
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_54

    const-wide v2, -0x9cd07853ca21aa1L  # -2.33344652172968E261

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method

.method private DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xbb57bfdfa937fc1L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgroovyjarjarantlr/collections/AST;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Labcd/Be$i;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x4aa41a75ebaa3608L  # 3.7607803165638045E51

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Labcd/Be$m;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    const-string v2, "https://dl.google.com/dl/android/maven2"

    invoke-direct {v0, v1, v2}, Labcd/Be$m;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Labcd/Be$m;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    const-string v2, "https://repo1.maven.org/maven2"

    invoke-direct {v0, v1, v2}, Labcd/Be$m;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Labcd/Be$m;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    const-string v2, "https://maven.aliyun.com/repository/public"

    invoke-direct {v0, v1, v2}, Labcd/Be$m;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_c6

    goto :goto_6d

    :sswitch_45
    const-string v0, "mavenCentral"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x0

    goto :goto_6e

    :sswitch_4f
    const-string v0, "flatDir.dirs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x2

    goto :goto_6e

    :sswitch_59
    const-string v0, "jcenter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    goto :goto_6e

    :sswitch_63
    const-string v0, "maven.url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x3

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 v0, -0x1

    :goto_6e
    if-eqz v0, :cond_a4

    if-eq v0, v3, :cond_98

    if-eq v0, v1, :cond_88

    if-eq v0, v2, :cond_77

    goto :goto_b0

    :cond_77
    new-instance v0, Labcd/Be$m;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/Be$m;-><init>(ILjava/lang/String;)V

    :goto_84
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_88
    new-instance v0, Labcd/Be$e;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/Be$e;-><init>(I)V

    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Labcd/Be$e;->gn:Ljava/lang/String;

    goto :goto_84

    :cond_98
    new-instance v0, Labcd/Be$m;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    const-string v2, "https://jcenter.bintray.com"

    invoke-direct {v0, v1, v2}, Labcd/Be$m;-><init>(ILjava/lang/String;)V

    goto :goto_84

    :cond_a4
    new-instance v0, Labcd/Be$m;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    const-string v2, "http://repo.maven.apache.org/maven2"

    invoke-direct {v0, v1, v2}, Labcd/Be$m;-><init>(ILjava/lang/String;)V
    :try_end_af
    .catchall {:try_start_0 .. :try_end_af} :catchall_b1

    goto :goto_84

    :goto_b0
    return-void

    :catchall_b1
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_c3

    const-wide v2, 0x4aa41a75ebaa3608L  # 3.7607803165638045E51

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c3
    goto :goto_c5

    :goto_c4
    throw v0

    :goto_c5
    goto :goto_c4

    :sswitch_data_c6
    .sparse-switch
        -0x6ded2d74 -> :sswitch_63
        -0x69f8aac1 -> :sswitch_59
        -0x50689320 -> :sswitch_4f
        -0x83a1e96 -> :sswitch_45
    .end sparse-switch
.end method

.method private FH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x16d8d8bcb3840f50L
    .end annotation

    const-wide v0, 0x336ebb2865448d7L

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v2

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_39

    invoke-static {p1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v2

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_2c

    invoke-static {p1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v2

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_39

    :cond_2c
    invoke-static {p1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Be;->VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3b

    return-object p1

    :cond_39
    const/4 p1, 0x0

    return-object p1

    :catchall_3b
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method private FH(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x7a71079939e83141L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x896d3fb078d2e28L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Be;->FH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_2e

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_17c

    const/4 v2, 0x4

    const-string v3, "dependencies"

    const-string v4, "android.productFlavors"

    const-string v5, "model.android.productFlavors"

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v1, :sswitch_data_190

    goto :goto_80

    :sswitch_40
    :try_start_40
    const-string v1, "model.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/4 v1, 0x1

    goto :goto_81

    :sswitch_4a
    const-string v1, "android.compileSdkVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/4 v1, 0x2

    goto :goto_81

    :sswitch_54
    const-string v1, "model.android.compileSdkVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/4 v1, 0x3

    goto :goto_81

    :sswitch_5e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/4 v1, 0x6

    goto :goto_81

    :sswitch_66
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/4 v1, 0x4

    goto :goto_81

    :sswitch_6e
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/4 v1, 0x0

    goto :goto_81

    :sswitch_78
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/4 v1, 0x5

    goto :goto_81

    :cond_80
    :goto_80
    const/4 v1, -0x1

    :goto_81
    packed-switch v1, :pswitch_data_1ae

    goto :goto_a5

    :pswitch_85  #0x6
    invoke-direct {p0, p1}, Labcd/Be;->DW(Lgroovyjarjarantlr/collections/AST;)I

    move-result v1

    iput v1, p0, Labcd/Be;->QX:I

    goto/16 :goto_163

    :pswitch_8d  #0x4, 0x5
    invoke-direct {p0, p1}, Labcd/Be;->DW(Lgroovyjarjarantlr/collections/AST;)I

    move-result v1

    iput v1, p0, Labcd/Be;->EQ:I

    goto/16 :goto_163

    :pswitch_95  #0x2, 0x3
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/Be;->gn:Ljava/lang/String;

    goto/16 :goto_163

    :pswitch_9d  #0x0, 0x1
    invoke-direct {p0, p1}, Labcd/Be;->DW(Lgroovyjarjarantlr/collections/AST;)I

    move-result v1

    iput v1, p0, Labcd/Be;->tp:I

    goto/16 :goto_163

    :goto_a5
    const-string v1, "android.defaultConfig"

    invoke-direct {p0, v0, v1}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-direct {p0, v0, v8}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Be;->u7:Labcd/Be$a;

    :goto_b3
    invoke-direct {p0, p1, v1, v2}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;Labcd/Be$a;)V

    goto/16 :goto_163

    :cond_b8
    const-string v1, "model.android.defaultConfig"

    invoke-direct {p0, v0, v1}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-direct {p0, v0, v7}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Be;->u7:Labcd/Be$a;

    goto :goto_b3

    :cond_c7
    const-string v1, "model.android.defaultConfig.with"

    invoke-direct {p0, v0, v1}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-direct {p0, v0, v2}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Be;->u7:Labcd/Be$a;

    goto :goto_b3

    :cond_d6
    invoke-direct {p0, v0, v4}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-direct {p0, p1, v0, v8}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;I)V

    goto/16 :goto_163

    :cond_e1
    invoke-direct {p0, v0, v5}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-direct {p0, p1, v0, v7}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;I)V

    goto/16 :goto_163

    :cond_ec
    const-string v1, "android.signingConfigs"

    invoke-direct {p0, v0, v1}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    invoke-direct {p0, p1, v0, v8}, Labcd/Be;->DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;I)V

    goto/16 :goto_163

    :cond_f9
    const-string v1, "model.android.signingConfigs"

    invoke-direct {p0, v0, v1}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-direct {p0, p1, v0, v7}, Labcd/Be;->DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;I)V

    goto :goto_163

    :cond_105
    invoke-direct {p0, v0, v3}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_115

    invoke-direct {p0, v0, v6}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Be;->XL:Ljava/util/List;

    :goto_111
    invoke-direct {p0, p1, v1, v2}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_163

    :cond_115
    const-string v1, "subprojects.dependencies"

    invoke-direct {p0, v0, v1}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_124

    invoke-direct {p0, v0, v8}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Be;->aM:Ljava/util/List;

    goto :goto_111

    :cond_124
    const-string v1, "allprojects.dependencies"

    invoke-direct {p0, v0, v1}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_133

    invoke-direct {p0, v0, v8}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Be;->j3:Ljava/util/List;

    goto :goto_111

    :cond_133
    const-string v1, "repositories"

    invoke-direct {p0, v0, v1}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_145

    invoke-direct {p0, v0, v6}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Be;->J0:Ljava/util/List;

    :goto_141
    invoke-direct {p0, p1, v1, v2}, Labcd/Be;->DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_163

    :cond_145
    const-string v1, "subprojects.repositories"

    invoke-direct {p0, v0, v1}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_154

    invoke-direct {p0, v0, v8}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Be;->Ws:Ljava/util/List;

    goto :goto_141

    :cond_154
    const-string v1, "allprojects.repositories"

    invoke-direct {p0, v0, v1}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_163

    invoke-direct {p0, v0, v8}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Be;->J8:Ljava/util/List;

    goto :goto_141

    :cond_163
    :goto_163
    invoke-direct {p0, p1}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgroovyjarjarantlr/collections/AST;

    invoke-direct {p0, v2, v0}, Labcd/Be;->FH(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)V
    :try_end_17a
    .catchall {:try_start_40 .. :try_end_17a} :catchall_17c

    goto :goto_16b

    :cond_17b
    return-void

    :catchall_17c
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_18d

    const-wide v2, 0x896d3fb078d2e28L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18d
    goto :goto_18f

    :goto_18e
    throw v0

    :goto_18f
    goto :goto_18e

    :sswitch_data_190
    .sparse-switch
        -0x46e83096 -> :sswitch_78
        -0x3357c991 -> :sswitch_6e
        -0x2f9340fb -> :sswitch_66
        0x1e06fd29 -> :sswitch_5e
        0x236b898d -> :sswitch_54
        0x4882b012 -> :sswitch_4a
        0x721d08aa -> :sswitch_40
    .end sparse-switch

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_9d  #00000000
        :pswitch_9d  #00000001
        :pswitch_95  #00000002
        :pswitch_95  #00000003
        :pswitch_8d  #00000004
        :pswitch_8d  #00000005
        :pswitch_85  #00000006
    .end packed-switch
.end method

.method private Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x23444532943fdd9L
    .end annotation

    const-wide v0, -0x5169c493b8c99ad0L  # -2.8610280723574463E-84

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v3

    const/16 v4, 0x58

    if-eq v3, v4, :cond_55

    invoke-static {v2}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v3

    const/16 v4, 0xc7

    if-ne v3, v4, :cond_29

    goto :goto_55

    :cond_29
    invoke-static {v2}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_53

    invoke-static {v2}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    invoke-static {v3}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v3

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_4a

    invoke-static {v2}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4a
    invoke-static {v2}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_53
    const/4 p1, 0x0

    return-object p1

    :cond_55
    :goto_55
    invoke-static {v2}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object p1
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_5a

    return-object p1

    :catchall_5a
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_62

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v2
.end method

.method private J0(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x409fb952edf17000L
    .end annotation

    const-wide v0, -0x1500ff3d510a259L

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dependencies"

    iget v4, p0, Labcd/Be;->QX:I

    invoke-direct {p0, v2, v3, v4}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method private VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1ade65b3e8a7ef4cL
    .end annotation

    const-wide v0, -0x3c0ffe2135710acfL  # -1.845516705834802E19

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_39

    invoke-static {p1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Labcd/Be;->VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_39
    invoke-static {p1}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object p1
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3e

    return-object p1

    :catchall_3e
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v2
.end method

.method private static Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x35fa7e2732fd36d8L
    .end annotation

    const-wide v0, 0x2c76e82abbed89b7L  # 1.7158832285245007E-94

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Be;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v2

    :cond_10
    invoke-interface {p0}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    move-exception v3

    sget-boolean v4, Labcd/Be;->VH:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method private static gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x48877f702524b64L
    .end annotation

    const-wide v0, -0x61e8bbc4c7dba60dL

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Be;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v2

    :cond_10
    invoke-interface {p0}, Lgroovyjarjarantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    move-exception v3

    sget-boolean v4, Labcd/Be;->VH:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method private j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5416c5254511c2e5L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2dbd4f73c9d6ac00L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_5f

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    invoke-static {v1}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_5f

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    invoke-static {v1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    invoke-static {v1}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_5f

    invoke-static {v0}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Be;->gn(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object p1
    :try_end_5e
    .catchall {:try_start_0 .. :try_end_5e} :catchall_61

    return-object p1

    :cond_5f
    const/4 p1, 0x0

    return-object p1

    :catchall_61
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_72

    const-wide v2, 0x2dbd4f73c9d6ac00L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    throw v0
.end method

.method private j6(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x323de32167382b31L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x20988c80bc321c74L  # -3.838240452052285E151

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length p1, v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_1f

    if-le p1, p2, :cond_1d

    aget-object p1, v0, p2

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x20988c80bc321c74L  # -3.838240452052285E151

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method private j6(Lgroovyjarjarantlr/collections/AST;)Ljava/util/List;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x3bbc83ac278902bcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgroovyjarjarantlr/collections/AST;",
            ")",
            "Ljava/util/List<",
            "Lgroovyjarjarantlr/collections/AST;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x37863b1188348941L  # 3.1899542111218836E-41

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    invoke-static {v3}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    invoke-static {v3}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    invoke-static {v3}, Labcd/Be;->v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    :goto_21
    if-eqz v3, :cond_33

    invoke-static {v3}, Labcd/Be;->u7(Lgroovyjarjarantlr/collections/AST;)I

    move-result v4

    const/16 v5, 0x1c

    if-ne v4, v5, :cond_2e

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    invoke-static {v3}, Labcd/Be;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_34

    goto :goto_21

    :cond_33
    return-object v2

    :catchall_34
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    goto :goto_3e

    :goto_3d
    throw v2

    :goto_3e
    goto :goto_3d
.end method

.method private j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1bc270a49b088a3L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x585ed818eb5f12a0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p2, p3}, Labcd/Be;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    new-instance v2, Labcd/Be$a;

    invoke-direct {v2, p0}, Labcd/Be$a;-><init>(Labcd/Be;)V

    invoke-interface {v1, v0, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, p2, v1}, Labcd/Be;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Be$a;

    invoke-direct {p0, p1, v1, v0}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;Labcd/Be$a;)V
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3e

    :cond_3d
    return-void

    :catchall_3e
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_54

    const-wide v2, 0x585ed818eb5f12a0L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method

.method private j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;Labcd/Be$a;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x5d4eb2c4698d0b5L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x34a6ef27939ac138L  # 4.6766444479606806E-55

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_bc

    goto :goto_73

    :sswitch_18
    const-string v0, "targetSdkVersion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x2

    goto :goto_74

    :sswitch_22
    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x6

    goto :goto_74

    :sswitch_2c
    const-string v0, "versionName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x5

    goto :goto_74

    :sswitch_36
    const-string v0, "versionCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x4

    goto :goto_74

    :sswitch_40
    const-string v0, "targetSdkVersion.apiLevel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x3

    goto :goto_74

    :sswitch_4a
    const-string v0, "applicationId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x7

    goto :goto_74

    :sswitch_54
    const-string v0, "multiDexEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v0, 0x8

    goto :goto_74

    :sswitch_5f
    const-string v0, "minSdkVersion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x0

    goto :goto_74

    :sswitch_69
    const-string v0, "minSdkVersion.apiLevel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    goto :goto_74

    :cond_73
    :goto_73
    const/4 v0, -0x1

    :goto_74
    packed-switch v0, :pswitch_data_e2

    goto :goto_a6

    :pswitch_78  #0x8
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Labcd/Be$a;->gn:Ljava/lang/String;

    goto :goto_a6

    :pswitch_7f  #0x7
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    :goto_83
    iput-object v0, p3, Labcd/Be$a;->VH:Ljava/lang/String;

    goto :goto_a6

    :pswitch_86  #0x6
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    :pswitch_8b  #0x5
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Labcd/Be$a;->v5:Ljava/lang/String;

    goto :goto_a6

    :pswitch_92  #0x4
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Labcd/Be$a;->Zo:Ljava/lang/String;

    goto :goto_a6

    :pswitch_99  #0x2, 0x3
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Labcd/Be$a;->Hw:Ljava/lang/String;

    goto :goto_a6

    :pswitch_a0  #0x0, 0x1
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Labcd/Be$a;->FH:Ljava/lang/String;
    :try_end_a6
    .catchall {:try_start_0 .. :try_end_a6} :catchall_a7

    :goto_a6
    return-void

    :catchall_a7
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_b9

    const-wide v2, 0x34a6ef27939ac138L  # 4.6766444479606806E-55

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b9
    goto :goto_bb

    :goto_ba
    throw v0

    :goto_bb
    goto :goto_ba

    :sswitch_data_bc
    .sparse-switch
        -0x58e56d78 -> :sswitch_69
        -0x4e3e18d0 -> :sswitch_5f
        -0x3e4c9abd -> :sswitch_54
        -0x3c480575 -> :sswitch_4a
        0x27efa8e9 -> :sswitch_40
        0x290b12e5 -> :sswitch_36
        0x290fdf83 -> :sswitch_2c
        0x362a8ff1 -> :sswitch_22
        0x5044efaf -> :sswitch_18
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_a0  #00000000
        :pswitch_a0  #00000001
        :pswitch_99  #00000002
        :pswitch_99  #00000003
        :pswitch_92  #00000004
        :pswitch_8b  #00000005
        :pswitch_86  #00000006
        :pswitch_7f  #00000007
        :pswitch_78  #00000008
    .end packed-switch
.end method

.method private j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;Labcd/Be$j;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x6f15c43f6a323b7L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x3cc3d5fb17490f04L  # -7.9274999204375E15

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_7e

    goto :goto_43

    :sswitch_1b
    const-string v0, "storeFile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    goto :goto_44

    :sswitch_25
    const-string v0, "keyAlias"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :sswitch_2f
    const-string v0, "keyPassword"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x2

    goto :goto_44

    :sswitch_39
    const-string v0, "storePassword"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x3

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v0, -0x1

    :goto_44
    if-eqz v0, :cond_62

    if-eq v0, v3, :cond_5b

    if-eq v0, v1, :cond_54

    if-eq v0, v2, :cond_4d

    goto :goto_6a

    :cond_4d
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Labcd/Be$j;->Zo:Ljava/lang/String;

    goto :goto_6a

    :cond_54
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Labcd/Be$j;->v5:Ljava/lang/String;

    goto :goto_6a

    :cond_5b
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Labcd/Be$j;->Hw:Ljava/lang/String;

    goto :goto_6a

    :cond_62
    const-string v0, "file"

    invoke-direct {p0, p1, v0}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Labcd/Be$j;->FH:Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_0 .. :try_end_6a} :catchall_6b

    :goto_6a
    return-void

    :catchall_6b
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_7d

    const-wide v2, -0x3cc3d5fb17490f04L  # -7.9274999204375E15

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    throw v0

    :sswitch_data_7e
    .sparse-switch
        -0x3b635964 -> :sswitch_39
        -0x2b311e6 -> :sswitch_2f
        0x1c342b31 -> :sswitch_25
        0x64d309fd -> :sswitch_1b
    .end sparse-switch
.end method

.method private j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;Ljava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x211c487cdd8db500L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgroovyjarjarantlr/collections/AST;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Labcd/Be$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "path"

    const-string v1, "@"

    :try_start_4
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_14

    const-wide v3, -0x4c9219588fe300ffL  # -5.814822891560422E-61

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_188

    goto :goto_67

    :sswitch_22
    const-string v2, "implementation"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_65

    :sswitch_2b
    const-string v2, "wearApp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const/4 v2, 0x0

    goto :goto_68

    :sswitch_35
    const-string v2, "compile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const/4 v2, 0x5

    goto :goto_68

    :sswitch_3f
    const-string v2, "testCompile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const/4 v2, 0x1

    goto :goto_68

    :sswitch_49
    const-string v2, "api"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const/4 v2, 0x4

    goto :goto_68

    :sswitch_53
    const-string v2, "androidTestCompile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const/4 v2, 0x2

    goto :goto_68

    :sswitch_5d
    const-string v2, "compileOnly"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_63
    .catchall {:try_start_4 .. :try_end_63} :catchall_173

    if-eqz v2, :cond_67

    :goto_65
    const/4 v2, 0x3

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v2, -0x1

    :goto_68
    const-string v9, "project"

    if-eqz v2, :cond_13e

    if-eq v2, v8, :cond_133

    if-eq v2, v7, :cond_133

    if-eq v2, v6, :cond_84

    if-eq v2, v4, :cond_84

    if-eq v2, v3, :cond_84

    :try_start_76
    new-instance v0, Labcd/Be$l;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/Be$l;-><init>(I)V

    :goto_7f
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_172

    :cond_84
    invoke-direct {p0, p1, v9}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9a

    new-instance v1, Labcd/Be$h;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v2

    invoke-direct {v1, v2}, Labcd/Be$h;-><init>(I)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, v1, Labcd/Be$h;->gn:Ljava/lang/String;

    goto/16 :goto_172

    :cond_9a
    const-string v0, "files"

    invoke-direct {p0, p1, v0}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b2

    new-instance v1, Labcd/Be$c;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v2

    invoke-direct {v1, v2}, Labcd/Be$c;-><init>(I)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, v1, Labcd/Be$c;->gn:Ljava/lang/String;

    goto/16 :goto_172

    :cond_b2
    const-string v0, "fileTree"

    invoke-direct {p0, p1, v0}, Labcd/Be;->DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_dc

    new-instance v1, Labcd/Be$d;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v2

    invoke-direct {v1, v2}, Labcd/Be$d;-><init>(I)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "dir"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Labcd/Be$d;->gn:Ljava/lang/String;

    const-string v2, "include"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Labcd/Be$d;->u7:Ljava/lang/String;

    goto/16 :goto_172

    :cond_dc
    invoke-direct {p0, p1}, Labcd/Be;->Hw(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_128

    new-instance v2, Labcd/Be$g;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v3

    invoke-direct {v2, v3}, Labcd/Be$g;-><init>(I)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, v2, Labcd/Be$g;->we:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_fd

    aget-object v3, v0, v5

    iput-object v3, v2, Labcd/Be$g;->gn:Ljava/lang/String;

    :cond_fd
    array-length v3, v0

    if-le v3, v8, :cond_104

    aget-object v3, v0, v8

    iput-object v3, v2, Labcd/Be$g;->u7:Ljava/lang/String;

    :cond_104
    array-length v3, v0
    :try_end_105
    .catchall {:try_start_76 .. :try_end_105} :catchall_173

    if-le v3, v7, :cond_172

    aget-object v0, v0, v7

    :try_start_109
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_125

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Labcd/Be$g;->tp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Labcd/Be$g;->EQ:Ljava/lang/String;

    goto :goto_172

    :cond_125
    iput-object v0, v2, Labcd/Be$g;->tp:Ljava/lang/String;

    goto :goto_172

    :cond_128
    new-instance v0, Labcd/Be$l;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/Be$l;-><init>(I)V

    goto/16 :goto_7f

    :cond_133
    new-instance v0, Labcd/Be$k;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/Be$k;-><init>(I)V

    goto/16 :goto_7f

    :cond_13e
    invoke-direct {p0, p1, v9}, Labcd/Be;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_157

    invoke-direct {p0, p1, v9}, Labcd/Be;->DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_157

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_157
    if-eqz v1, :cond_167

    new-instance v0, Labcd/Be$h;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v2

    invoke-direct {v0, v2}, Labcd/Be$h;-><init>(I)V

    iput-object v0, p0, Labcd/Be;->Mr:Labcd/Be$h;

    iput-object v1, v0, Labcd/Be$h;->gn:Ljava/lang/String;

    goto :goto_172

    :cond_167
    new-instance v0, Labcd/Be$l;

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/Be$l;-><init>(I)V
    :try_end_170
    .catchall {:try_start_109 .. :try_end_170} :catchall_173

    goto/16 :goto_7f

    :cond_172
    :goto_172
    return-void

    :catchall_173
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_185

    const-wide v2, -0x4c9219588fe300ffL  # -5.814822891560422E-61

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_185
    goto :goto_187

    :goto_186
    throw v0

    :goto_187
    goto :goto_186

    :sswitch_data_188
    .sparse-switch
        -0x7ba16381 -> :sswitch_5d
        -0x7214d4ae -> :sswitch_53
        0x17a1a -> :sswitch_49
        0x2140c541 -> :sswitch_3f
        0x38a75a33 -> :sswitch_35
        0x48eabe22 -> :sswitch_2b
        0x6455abb2 -> :sswitch_22
    .end sparse-switch
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x3fcd205147734b21L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1aa493c18041912cL  # -1.77799147599196E180

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_81

    :cond_14
    :try_start_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Labcd/BaseProjectConfig;->v5:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x1

    :goto_26
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v2, p3, :cond_34

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_37
    if-gez p3, :cond_55

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "}"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Labcd/BaseProjectConfig;->v5:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_63

    :cond_78
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_7b} :catch_7c
    .catchall {:try_start_14 .. :try_end_7b} :catchall_81

    goto :goto_80

    :catch_7c
    move-exception v0

    :try_start_7d
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    :goto_80
    return-void

    :catchall_81
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_97

    const-wide v2, -0x1aa493c18041912cL  # -1.77799147599196E180

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_97
    goto :goto_99

    :goto_98
    throw v0

    :goto_99
    goto :goto_98
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x89723937dcaf070L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Be;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x501728d504181afL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return p1

    :catchall_22
    move-exception v0

    sget-boolean v1, Labcd/Be;->VH:Z

    if-eqz v1, :cond_33

    const-wide v2, 0x501728d504181afL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method private static u7(Lgroovyjarjarantlr/collections/AST;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x6b00ce033eb2955L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x28a83d3a829fe6c0L  # 7.874254580774694E-113

    :try_start_6
    sget-boolean v3, Labcd/Be;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    invoke-interface {p0}, Lgroovyjarjarantlr/collections/AST;->getType()I

    move-result p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return p0

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/Be;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method private static v5(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2c306d4c3870d31bL
    .end annotation

    const-wide v0, 0x21903ee5642cf314L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Be;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v2

    :cond_10
    invoke-interface {p0}, Lgroovyjarjarantlr/collections/AST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    move-exception v3

    sget-boolean v4, Labcd/Be;->VH:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Labcd/Be;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x31b71093290eefbL
    .end annotation

    const-wide v0, -0x5ec8d25fa7b32040L

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Be;

    invoke-direct {v2, p1}, Labcd/Be;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public EQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x42d14c55fb943750L

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$a;

    iget-object v2, v2, Labcd/Be$a;->v5:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$a;

    iget-object p1, v2, Labcd/Be$a;->v5:Ljava/lang/String;

    return-object p1

    :cond_2d
    iget-object v2, p0, Labcd/Be;->u7:Labcd/Be$a;

    iget-object p1, v2, Labcd/Be$a;->v5:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-object p1

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public FH(Ljava/lang/String;)V
    .registers 8

    const-string v0, ":"

    const-wide v1, -0x252395634af23c33L  # -4.924339992816611E129

    :try_start_7
    sget-boolean v3, Labcd/Be;->Zo:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    iget-object v3, p0, Labcd/BaseProjectConfig;->v5:Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Labcd/FileSystemUtils;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "api project(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Be;->J0(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_4b

    return-void

    :catchall_4b
    move-exception v0

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_53

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v0
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x53b21caae71c1858L  # 1.5112093902408247E95

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "implementation \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Be;->J0(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public VH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x3bdee425e6b2194bL  # -1.5780079682969158E20

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$a;

    iget-object v2, v2, Labcd/Be$a;->FH:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$a;

    iget-object p1, v2, Labcd/Be$a;->FH:Ljava/lang/String;

    return-object p1

    :cond_2d
    iget-object v2, p0, Labcd/Be;->u7:Labcd/Be$a;

    iget-object p1, v2, Labcd/Be$a;->FH:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-object p1

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public Zo(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, 0x3177408eb289249cL  # 2.1056425632421115E-70

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$a;

    iget-object v2, v2, Labcd/Be$a;->VH:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$a;

    iget-object p1, v2, Labcd/Be$a;->VH:Ljava/lang/String;

    return-object p1

    :cond_2d
    iget-object v2, p0, Labcd/Be;->u7:Labcd/Be$a;

    iget-object p1, v2, Labcd/Be$a;->VH:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-object p1

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public gn(Ljava/lang/String;)Labcd/Be$j;
    .registers 6

    const-wide v0, 0x512ee9d86d6a002cL  # 1.172941689635964E83

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p1, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    iget-object v2, p0, Labcd/Be;->U2:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$j;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v2

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method protected bridge synthetic newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Be;->DW(Ljava/lang/String;)Labcd/Be;

    move-result-object p1

    return-object p1
.end method

.method public tp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, 0x10530e8c8b678e8L

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$a;

    iget-object v2, v2, Labcd/Be$a;->Zo:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$a;

    iget-object p1, v2, Labcd/Be$a;->Zo:Ljava/lang/String;

    return-object p1

    :cond_2d
    iget-object v2, p0, Labcd/Be;->u7:Labcd/Be$a;

    iget-object p1, v2, Labcd/Be$a;->Zo:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-object p1

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public u7(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, 0x30429adb89c72de0L  # 3.2135031865407015E-76

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$a;

    iget-object v2, v2, Labcd/Be$a;->Hw:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$a;

    iget-object p1, v2, Labcd/Be$a;->Hw:Ljava/lang/String;

    return-object p1

    :cond_2d
    iget-object v2, p0, Labcd/Be;->u7:Labcd/Be$a;

    iget-object p1, v2, Labcd/Be$a;->Hw:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-object p1

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public v5(Ljava/lang/String;)V
    .registers 7

    const-wide v0, -0x5d2d2be7482b87dL  # -3.310117130676546E280

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {\n\t\t}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Labcd/Be;->EQ:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2d

    const-string v4, ""

    invoke-direct {p0, v2, v4, v3}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4a

    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tproductFlavors {\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t}\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    iget v4, p0, Labcd/Be;->tp:I

    invoke-direct {p0, v2, v3, v4}, Labcd/Be;->j6(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_4b

    :goto_4a
    return-void

    :catchall_4b
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_53

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v2
.end method

.method public we(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x37ce951cde925638L  # -5.926877734603974E39

    :try_start_5
    sget-boolean v2, Labcd/Be;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_3c

    :cond_c
    const-string v2, "true"

    if-eqz p1, :cond_33

    :try_start_10
    iget-object v3, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v3, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v3, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Be$a;

    iget-object v3, v3, Labcd/Be$a;->gn:Ljava/lang/String;

    if-eqz v3, :cond_33

    iget-object v3, p0, Labcd/Be;->we:Ljava/util/SortedMap;

    invoke-interface {v3, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Be$a;

    iget-object v3, v3, Labcd/Be$a;->gn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_33
    iget-object v3, p0, Labcd/Be;->u7:Labcd/Be$a;

    iget-object v3, v3, Labcd/Be$a;->gn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_3c

    return p1

    :catchall_3c
    move-exception v2

    sget-boolean v3, Labcd/Be;->VH:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v2
.end method
