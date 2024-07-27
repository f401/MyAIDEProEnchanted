.class Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;
.super Ljava/lang/Object;
.source "FixCRLF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BufferLine"
.end annotation


# instance fields
.field private column:I

.field private eolStr:Ljava/lang/String;

.field private line:Ljava/lang/String;

.field private lookahead:I

.field private next:I

.field final this$1:Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 594
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->this$1:Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->next:I

    .line 588
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->column:I

    .line 589
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->lookahead:I

    .line 595
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->next:I

    .line 596
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->column:I

    .line 597
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->line:Ljava/lang/String;

    .line 598
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->eolStr:Ljava/lang/String;

    .line 599
    return-void
.end method


# virtual methods
.method public getChar(I)C
    .registers 3

    .line 618
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->line:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getColumn()I
    .registers 2

    .line 630
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->column:I

    return v0
.end method

.method public getEol()Ljava/lang/String;
    .registers 2

    .line 654
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->eolStr:Ljava/lang/String;

    return-object v0
.end method

.method public getEolLength()I
    .registers 2

    .line 646
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->eolStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getLineString()Ljava/lang/String;
    .registers 2

    .line 650
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->line:Ljava/lang/String;

    return-object v0
.end method

.method public getLookahead()I
    .registers 2

    .line 610
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->lookahead:I

    return v0
.end method

.method public getNext()I
    .registers 2

    .line 602
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->next:I

    return v0
.end method

.method public getNextChar()C
    .registers 2

    .line 622
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->next:I

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getNextCharInc()C
    .registers 3

    .line 626
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->next:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->next:I

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getState()I
    .registers 2

    .line 670
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->this$1:Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->getState()I

    move-result v0

    return v0
.end method

.method public incColumn()I
    .registers 3

    .line 638
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->column:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->column:I

    return v0
.end method

.method public length()I
    .registers 2

    .line 642
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public setColumn(I)V
    .registers 2

    .line 634
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->column:I

    .line 635
    return-void
.end method

.method public setLookahead(I)V
    .registers 2

    .line 614
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->lookahead:I

    .line 615
    return-void
.end method

.method public setNext(I)V
    .registers 2

    .line 606
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->next:I

    .line 607
    return-void
.end method

.method public setState(I)V
    .registers 3

    .line 666
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->this$1:Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->setState(I)V

    .line 667
    return-void
.end method

.method public substring(I)Ljava/lang/String;
    .registers 3

    .line 658
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->line:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 4

    .line 662
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;->line:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
