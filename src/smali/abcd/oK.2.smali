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

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Labcd/oK;->j6:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    iget-boolean v0, p0, Labcd/oK;->DW:Z

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v3, :cond_0

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :cond_0
    :try_start_2
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Labcd/oK;->DW:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    iget-object v0, p0, Labcd/oK;->FH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :catch_1
    move-exception v0

    iget-boolean v1, p0, Labcd/oK;->DW:Z

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3
    iget-object v0, p0, Labcd/oK;->FH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2
.end method
