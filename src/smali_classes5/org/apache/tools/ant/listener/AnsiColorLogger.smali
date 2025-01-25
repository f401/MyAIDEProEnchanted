.class public Lorg/apache/tools/ant/listener/AnsiColorLogger;
.super Lorg/apache/tools/ant/DefaultLogger;
.source "AnsiColorLogger.java"


# static fields
.field private static final ATTR_DIM:I = 0x2

.field private static final END_COLOR:Ljava/lang/String; = "\u001b[m"

.field private static final FG_BLUE:I = 0x22

.field private static final FG_CYAN:I = 0x24

.field private static final FG_GREEN:I = 0x20

.field private static final FG_MAGENTA:I = 0x23

.field private static final FG_RED:I = 0x1f

.field private static final PREFIX:Ljava/lang/String; = "\u001b["

.field private static final SEPARATOR:C = ';'

.field private static final SUFFIX:Ljava/lang/String; = "m"


# instance fields
.field private colorsSet:Z

.field private debugColor:Ljava/lang/String;

.field private errColor:Ljava/lang/String;

.field private infoColor:Ljava/lang/String;

.field private verboseColor:Ljava/lang/String;

.field private warnColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    .line 138
    const-string v0, "\u001b[2;31m"

    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->errColor:Ljava/lang/String;

    .line 140
    const-string v0, "\u001b[2;35m"

    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->warnColor:Ljava/lang/String;

    .line 142
    const-string v0, "\u001b[2;36m"

    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->infoColor:Ljava/lang/String;

    .line 144
    const-string v0, "\u001b[2;32m"

    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->verboseColor:Ljava/lang/String;

    .line 146
    const-string v0, "\u001b[2;34m"

    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->debugColor:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->colorsSet:Z

    return-void
.end method

.method private setColors()V
    .registers 9

    const/4 v2, 0x0

    .line 156
    const-string v0, "ant.logger.defaults"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :try_start_7
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 165
    if-eqz v0, :cond_c5

    .line 166
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1b} :catch_d7
    .catchall {:try_start_7 .. :try_end_1b} :catchall_d1

    move-result-object v0

    .line 171
    :goto_1c
    if-eqz v0, :cond_21

    .line 172
    :try_start_1e
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 175
    :cond_21
    const-string v2, "AnsiColorLogger.ERROR_COLOR"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    const-string v3, "AnsiColorLogger.WARNING_COLOR"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    const-string v4, "AnsiColorLogger.INFO_COLOR"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string v5, "AnsiColorLogger.VERBOSE_COLOR"

    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    const-string v6, "AnsiColorLogger.DEBUG_COLOR"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    if-eqz v2, :cond_59

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u001b["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "m"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->errColor:Ljava/lang/String;

    .line 183
    :cond_59
    if-eqz v3, :cond_73

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u001b["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->warnColor:Ljava/lang/String;

    .line 186
    :cond_73
    if-eqz v4, :cond_8d

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u001b["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->infoColor:Ljava/lang/String;

    .line 189
    :cond_8d
    if-eqz v5, :cond_a7

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u001b["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->verboseColor:Ljava/lang/String;

    .line 192
    :cond_a7
    if-eqz v1, :cond_c1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u001b["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->debugColor:Ljava/lang/String;
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_c1} :catch_da
    .catchall {:try_start_1e .. :try_end_c1} :catchall_dc

    .line 198
    :cond_c1
    :goto_c1
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 199
    return-void

    .line 168
    :cond_c5
    :try_start_c5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "/org/apache/tools/ant/listener/defaults.properties"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_ce} :catch_d7
    .catchall {:try_start_c5 .. :try_end_ce} :catchall_d1

    move-result-object v0

    goto/16 :goto_1c

    .line 198
    :catchall_d1
    move-exception v0

    move-object v1, v0

    :goto_d3
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 199
    throw v1

    .line 195
    :catch_d7
    move-exception v0

    move-object v0, v2

    goto :goto_c1

    :catch_da
    move-exception v1

    goto :goto_c1

    .line 198
    :catchall_dc
    move-exception v1

    move-object v2, v0

    goto :goto_d3
.end method


# virtual methods
.method protected printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V
    .registers 7

    const/4 v2, 0x0

    .line 210
    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    .line 211
    iget-boolean v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->colorsSet:Z

    if-nez v0, :cond_f

    .line 212
    invoke-direct {p0}, Lorg/apache/tools/ant/listener/AnsiColorLogger;->setColors()V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->colorsSet:Z

    .line 216
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    packed-switch p3, :pswitch_data_56

    .line 237
    iget-object v1, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->debugColor:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, "\u001b[m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    :cond_28
    return-void

    .line 231
    :pswitch_29  #0x3
    iget-object v1, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->verboseColor:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, "\u001b[m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 227
    :pswitch_34  #0x2
    iget-object v1, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->infoColor:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, "\u001b[m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 223
    :pswitch_3f  #0x1
    iget-object v1, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->warnColor:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, "\u001b[m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 219
    :pswitch_4a  #0x0
    iget-object v1, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->errColor:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, "\u001b[m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 217
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4a  #00000000
        :pswitch_3f  #00000001
        :pswitch_34  #00000002
        :pswitch_29  #00000003
    .end packed-switch
.end method
