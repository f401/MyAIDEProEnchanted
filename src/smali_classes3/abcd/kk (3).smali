.class Labcd/kk;
.super Ljava/lang/Object;
.source "kk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/lk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 5

    .line 32
    :try_start_0
    const-string v0, "abcd.kk"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_14

    const-wide v1, -0xbb50e75b5edbbb3L  # -1.543265553544348E252

    const-wide v3, -0x663473402c5af6bL

    invoke-static {v0, v1, v2, v3, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Labcd/lk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Labcd/kk;->v5:Labcd/lk;

    .line 37
    iput-object p2, p0, Labcd/kk;->FH:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Labcd/kk;->Hw:Ljava/lang/String;

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x41f1bf9c86e0480L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    const-wide v0, -0x6059601f3239aadL  # -3.745852786906982E279

    :try_start_5
    sget-boolean v2, Labcd/kk;->j6:Z

    if-eqz v2, :cond_c

    .line 45
    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    :cond_c
    new-instance v2, Labcd/jk;

    invoke-direct {v2, p0, p1}, Labcd/jk;-><init>(Labcd/kk;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    .line 52
    return-void

    .line 47
    :catchall_15
    move-exception v2

    .line 49
    sget-boolean v3, Labcd/kk;->DW:Z

    if-eqz v3, :cond_1d

    .line 50
    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :cond_1d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 165
    const/16 p2, 0x1000

    new-array p2, p2, [B

    .line 167
    :goto_e
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 168
    if-lez v1, :cond_19

    .line 169
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_e

    .line 171
    :cond_19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 172
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 173
    return-void
.end method

.method public run()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xb553539f781cec5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 59
    const-wide v0, -0x5eeb34bbec9511L

    :try_start_5
    sget-boolean v2, Labcd/kk;->j6:Z

    if-eqz v2, :cond_c

    .line 62
    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    .line 64
    :cond_c
    iget-object v2, p0, Labcd/kk;->FH:Ljava/lang/String;

    const-string v3, "data/data/aidepro.top/cache/rootinstall.apk"

    invoke-virtual {p0, v2, v3}, Labcd/kk;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 67
    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/io/PrintStream;

    .line 68
    move-object v4, v3

    check-cast v4, Landroid/content/pm/PackageInfo;
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_143

    .line 70
    :try_start_24
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_141

    .line 72
    :try_start_34
    const-string v1, "pm install -r data/data/aidepro.top/cache/rootinstall.apk"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 74
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 75
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 77
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 78
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    :goto_58
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_5c
    .catchall {:try_start_34 .. :try_end_5c} :catchall_13b

    .line 81
    const-string v8, "\n"

    if-nez v7, :cond_11d

    .line 91
    :try_start_60
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 92
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    :goto_73
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 95
    if-nez v6, :cond_115

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "signatures do not match previously"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 104
    const-string v2, "安装失败，与已安装 APK 签名不一致，请卸载当前版本后再安装"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b3

    .line 107
    :cond_8b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "INSTALL_FAILED_VERSION_DOWNGRADE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 109
    const-string v2, "安装失败，不能降级安装，请卸载当前版本后再安装"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b3

    .line 117
    :cond_9d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "exited with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :goto_b3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "pm: exited with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 124
    if-nez v1, :cond_111

    const-string v1, "Failure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_111

    .line 125
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_e3
    .catchall {:try_start_60 .. :try_end_e3} :catchall_13b

    .line 127
    :try_start_e3
    iget-object v2, p0, Labcd/kk;->Hw:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_eb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e3 .. :try_end_eb} :catch_ec
    .catchall {:try_start_e3 .. :try_end_eb} :catchall_13b

    goto :goto_ed

    :catch_ec
    move-exception v2

    .line 130
    :goto_ed
    :try_start_ed
    iget-object v2, p0, Labcd/kk;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_fd

    .line 132
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_142

    .line 134
    :cond_fd
    if-nez v3, :cond_108

    .line 135
    new-instance v1, Labcd/hk;

    invoke-direct {v1, p0}, Labcd/hk;-><init>(Labcd/kk;)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    goto :goto_142

    .line 138
    :cond_108
    new-instance v1, Labcd/ik;

    invoke-direct {v1, p0}, Labcd/ik;-><init>(Labcd/kk;)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    goto :goto_142

    .line 142
    :cond_111
    invoke-direct {p0, v2}, Labcd/kk;->j6(Ljava/lang/String;)V

    goto :goto_142

    .line 98
    :cond_115
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_73

    .line 84
    :cond_11d
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "pm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V
    :try_end_139
    .catchall {:try_start_ed .. :try_end_139} :catchall_13b

    goto/16 :goto_58

    .line 142
    :catchall_13b
    move-exception v1

    .line 146
    nop

    .line 147
    :try_start_13d
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 149
    throw v1
    :try_end_141
    .catchall {:try_start_13d .. :try_end_141} :catchall_141

    :catchall_141
    move-exception v0

    .line 158
    :goto_142
    return-void

    .line 152
    :catchall_143
    move-exception v2

    .line 155
    sget-boolean v3, Labcd/kk;->DW:Z

    if-eqz v3, :cond_14b

    .line 156
    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    .line 158
    :cond_14b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_152

    :goto_151
    throw v0

    :goto_152
    goto :goto_151
.end method
