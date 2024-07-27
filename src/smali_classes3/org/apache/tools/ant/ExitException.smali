.class public Lorg/apache/tools/ant/ExitException;
.super Ljava/lang/SecurityException;
.source "ExitException.java"


# static fields
.field private static final serialVersionUID:J = 0x2679db03a27a0c83L


# instance fields
.field private status:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExitException: status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    iput p1, p0, Lorg/apache/tools/ant/ExitException;->status:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    iput p2, p0, Lorg/apache/tools/ant/ExitException;->status:I

    .line 51
    return-void
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    .line 59
    iget v0, p0, Lorg/apache/tools/ant/ExitException;->status:I

    return v0
.end method
