.class Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;
.super Lorg/apache/tools/ant/taskdefs/LogOutputStream;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavadocOutputStream"
.end annotation


# instance fields
.field private queuedLine:Ljava/lang/String;

.field private sawWarnings:Z

.field final this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;I)V
    .registers 4

    .line 2612
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    .line 2613
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    .line 2621
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    .line 2622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->sawWarnings:Z

    .line 2614
    return-void
.end method


# virtual methods
.method protected logFlush()V
    .registers 3

    .line 2649
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2650
    const/4 v1, 0x3

    invoke-super {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    .line 2651
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    .line 2653
    :cond_b
    return-void
.end method

.method protected processLine(Ljava/lang/String;I)V
    .registers 6

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 2626
    const-string v0, "(\\d) warning[s]?$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->sawWarnings:Z

    .line 2629
    :cond_d
    if-ne p2, v1, :cond_21

    .line 2630
    const-string v0, "Generating "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2631
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 2632
    invoke-super {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    .line 2634
    :cond_1e
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    .line 2646
    :goto_20
    return-void

    .line 2636
    :cond_21
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 2637
    const-string v0, "Building "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2638
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    invoke-super {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    .line 2642
    :goto_32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    .line 2644
    :cond_35
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    goto :goto_20

    .line 2640
    :cond_39
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    goto :goto_32
.end method

.method public sawWarnings()Z
    .registers 2

    .line 2656
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->sawWarnings:Z

    return v0
.end method
