.class public Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;
.super Ljava/lang/Object;
.source "FixCRLF.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/FixCRLF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OneLiner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CTRLZ:C = '\u001a'

.field private static final INBUFLEN:I = 0x2000

.field private static final LINEBUFLEN:I = 0xc8

.field private static final LOOKING:I = 0x1

.field private static final NOTJAVA:I = 0x0

.field private static final UNDEF:I = -0x1


# instance fields
.field private eofStr:Ljava/lang/StringBuffer;

.field private eolStr:Ljava/lang/StringBuffer;

.field private line:Ljava/lang/StringBuffer;

.field private reachedEof:Z

.field private reader:Ljava/io/BufferedReader;

.field private srcFile:Ljava/io/File;

.field private state:I

.field final this$0:Lorg/apache/tools/ant/taskdefs/FixCRLF;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/FixCRLF;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 420
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->this$0:Lorg/apache/tools/ant/taskdefs/FixCRLF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->access$000(Lorg/apache/tools/ant/taskdefs/FixCRLF;)Lorg/apache/tools/ant/filters/FixCrLfFilter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getJavafiles()Z

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->state:I

    .line 406
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    .line 407
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eofStr:Ljava/lang/StringBuffer;

    .line 410
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    .line 411
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reachedEof:Z

    .line 421
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->srcFile:Ljava/io/File;

    .line 423
    :try_start_2b
    new-instance v1, Ljava/io/BufferedReader;

    .line 424
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->access$100(Lorg/apache/tools/ant/taskdefs/FixCRLF;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 425
    :goto_38
    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    .line 428
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->nextLine()V

    .line 432
    return-void

    .line 425
    :cond_43
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->access$100(Lorg/apache/tools/ant/taskdefs/FixCRLF;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_57} :catch_58

    goto :goto_38

    .line 429
    :catch_58
    move-exception v0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    .line 582
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 584
    :cond_7
    return-void
.end method

.method public getEofStr()Ljava/lang/String;
    .registers 3

    .line 532
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eofStr:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 540
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->state:I

    return v0
.end method

.method public hasMoreElements()Z
    .registers 2

    .line 556
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reachedEof:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 570
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    .line 571
    new-instance v1, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;-><init>(Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->nextLine()V

    .line 573
    return-object v1

    .line 568
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "OneLiner"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected nextLine()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v6, -0x1

    const/16 v5, 0xa

    const/4 v1, 0x1

    .line 441
    .line 444
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    .line 445
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    .line 448
    :try_start_14
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v3

    .line 449
    :goto_1a
    if-eq v3, v6, :cond_2f

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2f

    if-eq v3, v5, :cond_2f

    .line 450
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 451
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v3

    goto :goto_1a

    .line 454
    :cond_2f
    if-ne v3, v6, :cond_3d

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_3d

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reachedEof:Z

    .line 524
    :cond_3c
    :goto_3c
    return-void

    .line 460
    :cond_3d
    int-to-char v3, v3

    packed-switch v3, :pswitch_data_fe

    .line 495
    :goto_41
    :pswitch_41  #0xb, 0xc
    if-nez v0, :cond_3c

    .line 503
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 504
    :cond_49
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_57

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_49

    .line 507
    :cond_57
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3c

    .line 510
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eofStr:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    if-gez v0, :cond_f4

    .line 512
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reachedEof:Z
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_7d} :catch_7e

    goto :goto_3c

    .line 521
    :catch_7e
    move-exception v0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->srcFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->this$0:Lorg/apache/tools/ant/taskdefs/FixCRLF;

    .line 523
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3

    .line 465
    :pswitch_a5  #0xd
    :try_start_a5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/io/BufferedReader;->mark(I)V

    .line 467
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 468
    sparse-switch v0, :sswitch_data_10a

    .line 487
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    move v0, v1

    .line 488
    goto :goto_41

    .line 470
    :sswitch_c2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 471
    int-to-char v0, v0

    if-ne v0, v5, :cond_d5

    .line 472
    const/4 v0, 0x3

    .line 473
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_41

    .line 475
    :cond_d5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    move v0, v1

    .line 477
    goto/16 :goto_41

    .line 480
    :sswitch_dd
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    .line 481
    goto/16 :goto_41

    :sswitch_e7
    move v0, v1

    .line 485
    goto/16 :goto_41

    .line 494
    :pswitch_ea  #0xa
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto/16 :goto_41

    .line 515
    :cond_f4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_fb} :catch_7e

    goto/16 :goto_3c

    .line 460
    nop

    :pswitch_data_fe
    .packed-switch 0xa
        :pswitch_ea  #0000000a
        :pswitch_41  #0000000b
        :pswitch_41  #0000000c
        :pswitch_a5  #0000000d
    .end packed-switch

    .line 468
    :sswitch_data_10a
    .sparse-switch
        -0x1 -> :sswitch_e7
        0xa -> :sswitch_dd
        0xd -> :sswitch_c2
    .end sparse-switch
.end method

.method public setState(I)V
    .registers 2

    .line 548
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->state:I

    .line 549
    return-void
.end method
