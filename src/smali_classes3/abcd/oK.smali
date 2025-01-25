.class Labcd/oK;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/pK;->j6(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Z

.field private final FH:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j6:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/Process;ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 4

    iput-object p1, p0, Labcd/oK;->j6:Ljava/lang/Process;

    iput-boolean p2, p0, Labcd/oK;->DW:Z

    iput-object p3, p0, Labcd/oK;->FH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Labcd/oK;->j6:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_7
    iget-boolean v2, p0, Labcd/oK;->DW:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1a

    :goto_c
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v3, :cond_13

    goto :goto_30

    :cond_13
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(C)V

    goto :goto_c

    :cond_1a
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1e} :catch_21

    if-ne v2, v3, :cond_1a

    goto :goto_30

    :catch_21
    move-exception v2

    iget-boolean v3, p0, Labcd/oK;->DW:Z

    if-eqz v3, :cond_2b

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2b
    iget-object v2, p0, Labcd/oK;->FH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_43

    :catch_34
    move-exception v0

    iget-boolean v2, p0, Labcd/oK;->DW:Z

    if-eqz v2, :cond_3e

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3e
    iget-object v0, p0, Labcd/oK;->FH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_43
    return-void
.end method
