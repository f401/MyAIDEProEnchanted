.class public Lorg/apache/commons/lang3/NotImplementedException;
.super Ljava/lang/UnsupportedOperationException;
.source "NotImplementedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1332ccdL


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/NotImplementedException;->code:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 65
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/NotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 98
    iput-object p2, p0, Lorg/apache/commons/lang3/NotImplementedException;->code:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/NotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    iput-object p3, p0, Lorg/apache/commons/lang3/NotImplementedException;->code:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/NotImplementedException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    iput-object p2, p0, Lorg/apache/commons/lang3/NotImplementedException;->code:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lorg/apache/commons/lang3/NotImplementedException;->code:Ljava/lang/String;

    return-object v0
.end method
