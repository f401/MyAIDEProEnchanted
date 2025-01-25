.class public Labcd/Je;
.super Labcd/BaseProjectConfig;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSi<",
        "Labcd/Je;",
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
.field private gn:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x5e687d1f224bf6bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x34d2d6e281f071d9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Je;

    const-wide v1, 0x108c007144d360f1L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x4e0b0feb001e1410L  # -4.85391826949505E-68

    :try_start_6
    sget-boolean v3, Labcd/Je;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/Je;->gn:Ljava/util/Map;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/Je;->VH:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x470e1e3601e0b5L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x5fabf516c347e600L  # 7.321233638000495E152

    :try_start_6
    sget-boolean v3, Labcd/Je;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/Je;->gn:Ljava/util/Map;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_90

    :try_start_17
    invoke-static {p1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Labcd/Je;->u7:Ljava/lang/String;

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

    :goto_45
    if-eqz v3, :cond_8f

    invoke-direct {p0, v3}, Labcd/Je;->u7(Lgroovyjarjarantlr/collections/AST;)Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-direct {p0, v3}, Labcd/Je;->DW(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v4

    invoke-direct {p0, v3}, Labcd/Je;->FH(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v5

    const-string v6, "projectDir"

    invoke-direct {p0, v4, v6}, Labcd/Je;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-direct {p0, v4}, Labcd/Je;->j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v6

    const-string v7, "project"

    invoke-direct {p0, v6, v7}, Labcd/Je;->DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    const-string v6, "file"

    invoke-direct {p0, v5, v6}, Labcd/Je;->DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-direct {p0, v4}, Labcd/Je;->j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v4

    invoke-direct {p0, v4}, Labcd/Je;->v5(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5}, Labcd/Je;->v5(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_86

    if-eqz v5, :cond_86

    iget-object v6, p0, Labcd/Je;->gn:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_86
    invoke-interface {v3}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v3
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8a} :catch_8b
    .catchall {:try_start_17 .. :try_end_8a} :catchall_90

    goto :goto_45

    :catch_8b
    move-exception v3

    :try_start_8c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    :cond_8f
    return-void

    :catchall_90
    move-exception v3

    sget-boolean v4, Labcd/Je;->VH:Z

    if-eqz v4, :cond_98

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v3

    :goto_9a
    goto :goto_99
.end method

.method private DW(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2d2a903e517bba28L
    .end annotation

    const-wide v0, -0x1ce021d5da1e2e7bL  # -3.0066998836803626E169

    :try_start_5
    sget-boolean v2, Labcd/Je;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Je;->VH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method private DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2f70654fbb2aacd9L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x2a73f126f7a53f40L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Je;->gn(Lgroovyjarjarantlr/collections/AST;)I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_24

    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_26

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x2a73f126f7a53f40L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method private FH(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x318dc2c6aab4d6e9L
    .end annotation

    const-wide v0, 0x1f866081b011e900L  # 8.149176416494274E-157

    :try_start_5
    sget-boolean v2, Labcd/Je;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Je;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Je;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method private static Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x12c36a8635d86b40L
    .end annotation

    const-wide v0, 0x297af6fd22ab0ad3L  # 7.175939729014527E-109

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Je;->Zo:Z

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

    sget-boolean v4, Labcd/Je;->VH:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method private static VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5455e78e3cdc6bbL
    .end annotation

    const-wide v0, -0x6c1c73bcc82771acL  # -7.258271308172364E-213

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Je;->Zo:Z

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

    sget-boolean v4, Labcd/Je;->VH:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method private static Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x24419f59a6916f1dL
    .end annotation

    const-wide v0, 0x11d736f180acc6a0L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Je;->Zo:Z

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

    sget-boolean v4, Labcd/Je;->VH:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method private static gn(Lgroovyjarjarantlr/collections/AST;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x25e7d4c4e2d321cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1e4525aa6fb7e813L  # 7.34452694751181E-163

    :try_start_6
    sget-boolean v3, Labcd/Je;->Zo:Z

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

    sget-boolean v4, Labcd/Je;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method private j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x7571c3a3d1c61911L
    .end annotation

    const-wide v0, 0x2db7f22200b2524cL

    :try_start_5
    sget-boolean v2, Labcd/Je;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Je;->VH:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method private j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x127abb6eb83ab36cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xccff252e17ee85L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Je;->gn(Lgroovyjarjarantlr/collections/AST;)I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_28

    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_2a

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    return p1

    :catchall_2a
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0xccff252e17ee85L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method private u7(Lgroovyjarjarantlr/collections/AST;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2efbfb680cd94dadL
    .end annotation

    const-wide v0, 0x1378137f32477640L  # 6.984097898743554E-215

    :try_start_5
    sget-boolean v2, Labcd/Je;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Je;->gn(Lgroovyjarjarantlr/collections/AST;)I

    move-result v2

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_22

    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Je;->gn(Lgroovyjarjarantlr/collections/AST;)I

    move-result p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_24

    const/16 v0, 0x7c

    if-ne p1, v0, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Je;->VH:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method private v5(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x77c9bd85e1685c9L
    .end annotation

    const-wide v0, -0xc8398ef972d1fb8L

    :try_start_5
    sget-boolean v2, Labcd/Je;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Je;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-static {v2}, Labcd/Je;->VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/Je;->VH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Labcd/Je;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2d304df7409f704L
    .end annotation

    const-wide v0, -0x68ab7fe2102c44ddL  # -2.742498344269059E-196

    :try_start_5
    sget-boolean v2, Labcd/Je;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Je;

    invoke-direct {v2, p1}, Labcd/Je;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Je;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xc94c07c60193d7cL  # -9.525827396945531E247

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p2, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    iget-object v0, p0, Labcd/Je;->gn:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Labcd/Je;->u7:Ljava/lang/String;

    iget-object v1, p0, Labcd/Je;->gn:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    const-string v0, ":"

    const-string v1, "/"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-object p1

    :catchall_34
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_45

    const-wide v2, -0xc94c07c60193d7cL  # -9.525827396945531E247

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method protected bridge synthetic newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Je;->DW(Ljava/lang/String;)Labcd/Je;

    move-result-object p1

    return-object p1
.end method
