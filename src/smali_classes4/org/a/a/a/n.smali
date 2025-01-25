.class public Lorg/a/a/a/n;
.super Lorg/a/a/a/b;


# static fields
.field public static final a:Lorg/a/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/a/a/a/n;

    invoke-direct {v0}, Lorg/a/a/a/n;-><init>()V

    sput-object v0, Lorg/a/a/a/n;->a:Lorg/a/a/a/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/u;Ljava/lang/Object;IILjava/lang/String;Lorg/a/a/a/t;)V
    .registers 10

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "line "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
