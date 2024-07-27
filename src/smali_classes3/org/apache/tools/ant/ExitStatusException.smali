.class public Lorg/apache/tools/ant/ExitStatusException;
.super Lorg/apache/tools/ant/BuildException;
.source "ExitStatusException.java"


# static fields
.field private static final serialVersionUID:J = 0x6bb4110d58b31670L


# instance fields
.field private status:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/BuildException;-><init>()V

    .line 38
    iput p1, p0, Lorg/apache/tools/ant/ExitStatusException;->status:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 48
    iput p2, p0, Lorg/apache/tools/ant/ExitStatusException;->status:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/tools/ant/Location;)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    .line 59
    iput p2, p0, Lorg/apache/tools/ant/ExitStatusException;->status:I

    .line 60
    return-void
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    .line 67
    iget v0, p0, Lorg/apache/tools/ant/ExitStatusException;->status:I

    return v0
.end method
