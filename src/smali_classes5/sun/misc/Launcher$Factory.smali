.class Lsun/misc/Launcher$Factory;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation


# static fields
.field private static PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 455
    const-string v0, "sun.net.www.protocol"

    sput-object v0, Lsun/misc/Launcher$Factory;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsun/misc/Launcher$1;)V
    .registers 2

    .line 454
    invoke-direct {p0}, Lsun/misc/Launcher$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 4

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsun/misc/Launcher$Factory;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    :try_start_1b
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLStreamHandler;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_25} :catch_4b
    .catch Ljava/lang/InstantiationException; {:try_start_1b .. :try_end_25} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_25} :catch_26

    return-object v0

    .line 466
    :catch_26
    move-exception v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 468
    :goto_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "system protocol handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :catch_46
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2a

    .line 462
    :catch_4b
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2a
.end method
