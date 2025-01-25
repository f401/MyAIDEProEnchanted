.class public final Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;
.super Lorg/apache/tools/ant/taskdefs/optional/native2ascii/DefaultNative2Ascii;
.source "KaffeNative2Ascii.java"


# static fields
.field public static final IMPLEMENTATION_NAME:Ljava/lang/String; = "kaffe"

.field private static final N2A_CLASSNAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gnu.classpath.tools.native2ascii.Native2ASCII"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "kaffe.tools.native2ascii.Native2Ascii"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;->N2A_CLASSNAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/DefaultNative2Ascii;-><init>()V

    return-void
.end method

.method private static getN2aClass()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 80
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;->N2A_CLASSNAMES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_11

    aget-object v3, v1, v0

    .line 82
    :try_start_8
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 87
    :goto_c
    return-object v0

    .line 83
    :catch_d
    move-exception v3

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 87
    :cond_11
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method protected run(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/ProjectComponent;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;-><init>()V

    .line 60
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;->getN2aClass()Ljava/lang/Class;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_1e

    .line 66
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setJavaCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 68
    invoke-virtual {p2}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->execute(Lorg/apache/tools/ant/Project;)V

    .line 70
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_1e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Couldn\'t load Kaffe\'s Native2Ascii class"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setup(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getReverse()Z

    move-result v0

    if-nez v0, :cond_a

    .line 52
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/DefaultNative2Ascii;->setup(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)V

    .line 53
    return-void

    .line 50
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "-reverse is not supported by Kaffe"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
