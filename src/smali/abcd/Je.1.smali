.class public Labcd/Je;
.super Labcd/BaseProjectConfig;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSi",
        "<",
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
            "Ljava/util/Map",
            "<",
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
    .registers 4

    const-wide v2, 0x108c007144d360f1L

    const-class v0, Labcd/Je;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x4e0b0feb001e1410L    # -4.85391826949505E-68

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4e0b0feb001e1410L    # -4.85391826949505E-68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Je;->gn:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x470e1e3601e0b5L
    .end annotation

    const-wide v6, 0x5fabf516c347e600L    # 7.321233638000495E152

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5fabf516c347e600L    # 7.321233638000495E152

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Je;->gn:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Je;->u7:Ljava/lang/String;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/antlr/SourceBuffer;

    invoke-direct {v1}, Lorg/codehaus/groovy/antlr/SourceBuffer;-><init>()V

    new-instance v2, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;

    invoke-direct {v2, v0, v1}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;-><init>(Ljava/io/Reader;Lorg/codehaus/groovy/antlr/SourceBuffer;)V

    new-instance v3, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-direct {v3, v2}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2, v3}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->j6(Lgroovyjarjarantlr/CharScanner;)V

    invoke-static {v3}, Lorg/codehaus/groovy/antlr/parser/GroovyRecognizer;->j6(Lorg/codehaus/groovy/antlr/parser/GroovyLexer;)Lorg/codehaus/groovy/antlr/parser/GroovyRecognizer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/codehaus/groovy/antlr/parser/GroovyRecognizer;->j6(Lorg/codehaus/groovy/antlr/SourceBuffer;)V

    invoke-virtual {v2}, Lorg/codehaus/groovy/antlr/parser/GroovyRecognizer;->cb()V

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v2}, Lgroovyjarjarantlr/Parser;->DW()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Labcd/Je;->u7(Lgroovyjarjarantlr/collections/AST;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Labcd/Je;->DW(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    invoke-direct {p0, v0}, Labcd/Je;->FH(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    const-string v3, "projectDir"

    invoke-direct {p0, v1, v3}, Labcd/Je;->j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Labcd/Je;->j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v3

    const-string v4, "project"

    invoke-direct {p0, v3, v4}, Labcd/Je;->DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "file"

    invoke-direct {p0, v2, v3}, Labcd/Je;->DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Labcd/Je;->j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Je;->v5(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2}, Labcd/Je;->v5(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Labcd/Je;->gn:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    return-void

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, v5, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private DW(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2d2a903e517bba28L
    .end annotation

    const-wide v2, -0x1ce021d5da1e2e7bL    # -3.0066998836803626E169

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1ce021d5da1e2e7bL    # -3.0066998836803626E169

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2f70654fbb2aacd9L
    .end annotation

    const-wide v2, -0x2a73f126f7a53f40L

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2a73f126f7a53f40L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/Je;->gn(Lgroovyjarjarantlr/collections/AST;)I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Je;->VH:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private FH(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x318dc2c6aab4d6e9L
    .end annotation

    const-wide v2, 0x1f866081b011e900L    # 8.149176416494274E-157

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f866081b011e900L    # 8.149176416494274E-157

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x12c36a8635d86b40L
    .end annotation

    const-wide v4, 0x297af6fd22ab0ad3L    # 7.175939729014527E-109

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Je;->Zo:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x297af6fd22ab0ad3L    # 7.175939729014527E-109

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lgroovyjarjarantlr/collections/AST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Labcd/Je;->VH:Z

    if-eqz v2, :cond_2

    invoke-static {v1, v4, v5, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5455e78e3cdc6bbL
    .end annotation

    const-wide v4, -0x6c1c73bcc82771acL    # -7.258271308172364E-213

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Je;->Zo:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x6c1c73bcc82771acL    # -7.258271308172364E-213

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lgroovyjarjarantlr/collections/AST;->getText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Labcd/Je;->VH:Z

    if-eqz v2, :cond_2

    invoke-static {v1, v4, v5, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x24419f59a6916f1dL
    .end annotation

    const-wide v4, 0x11d736f180acc6a0L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Je;->Zo:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x11d736f180acc6a0L

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Labcd/Je;->VH:Z

    if-eqz v2, :cond_2

    invoke-static {v1, v4, v5, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static gn(Lgroovyjarjarantlr/collections/AST;)I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x25e7d4c4e2d321cL
    .end annotation

    const-wide v4, 0x1e4525aa6fb7e813L    # 7.34452694751181E-163

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e4525aa6fb7e813L    # 7.34452694751181E-163

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lgroovyjarjarantlr/collections/AST;->getType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x7571c3a3d1c61911L
    .end annotation

    const-wide v2, 0x2db7f22200b2524cL

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2db7f22200b2524cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Lgroovyjarjarantlr/collections/AST;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x127abb6eb83ab36cL
    .end annotation

    const-wide v2, 0xccff252e17ee85L

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xccff252e17ee85L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/Je;->gn(Lgroovyjarjarantlr/collections/AST;)I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Je;->VH:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private u7(Lgroovyjarjarantlr/collections/AST;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2efbfb680cd94dadL
    .end annotation

    const-wide v2, 0x1378137f32477640L    # 6.984097898743554E-215

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1378137f32477640L    # 6.984097898743554E-215

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/Je;->gn(Lgroovyjarjarantlr/collections/AST;)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->gn(Lgroovyjarjarantlr/collections/AST;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private v5(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x77c9bd85e1685c9L
    .end annotation

    const-wide v2, -0xc8398ef972d1fb8L

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc8398ef972d1fb8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->Zo(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->Hw(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-static {v0}, Labcd/Je;->VH(Lgroovyjarjarantlr/collections/AST;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Labcd/Je;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2d304df7409f704L
    .end annotation

    const-wide v2, -0x68ab7fe2102c44ddL    # -2.742498344269059E-196

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x68ab7fe2102c44ddL    # -2.742498344269059E-196

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Je;

    invoke-direct {v0, p1}, Labcd/Je;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Je;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-wide v2, -0xc94c07c60193d7cL    # -9.525827396945531E247

    :try_start_0
    sget-boolean v0, Labcd/Je;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc94c07c60193d7cL    # -9.525827396945531E247

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/Je;->gn:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Labcd/Je;->u7:Ljava/lang/String;

    iget-object v0, p0, Labcd/Je;->gn:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ":"

    const-string v1, "/"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Je;->VH:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method protected bridge synthetic newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Je;->DW(Ljava/lang/String;)Labcd/Je;

    move-result-object v0

    return-object v0
.end method
