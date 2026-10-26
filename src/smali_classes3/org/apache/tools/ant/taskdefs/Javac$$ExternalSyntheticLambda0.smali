.class public final synthetic Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
