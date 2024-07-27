.class public Lorg/apache/tools/ant/BuildException;
.super Ljava/lang/RuntimeException;
.source "BuildException.java"


# static fields
.field private static final serialVersionUID:J = -0x4b34350938a1f130L


# instance fields
.field private location:Lorg/apache/tools/ant/Location;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 28
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V
    .registers 4

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    iput-object p3, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V
    .registers 4

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 110
    iput-object p2, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 111
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 57
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V
    .registers 3

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 124
    iput-object p2, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 125
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lorg/apache/tools/ant/Location;
    .registers 2

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-object v0
.end method

.method public setLocation(Lorg/apache/tools/ant/Location;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
