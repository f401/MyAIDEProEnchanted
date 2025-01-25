.class public Labcd/kL;
.super Ljava/lang/Exception;


# instance fields
.field private DW:Ljava/lang/Object;

.field private FH:I

.field private j6:I


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Labcd/kL;->FH:I

    iput p2, p0, Labcd/kL;->j6:I

    iput-object p3, p0, Labcd/kL;->DW:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Labcd/kL;->j6:I

    if-eqz v1, :cond_34

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    const-string v1, "Unkown error at position "

    goto :goto_40

    :cond_12
    const-string v1, "Unexpected exception at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Labcd/kL;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/kL;->DW:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4d

    :cond_27
    const-string v1, "Unexpected token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/kL;->DW:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " at position "

    goto :goto_40

    :cond_34
    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/kL;->DW:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ") at position "

    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Labcd/kL;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
