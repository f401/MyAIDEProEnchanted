.class public final synthetic Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1, p2}, Lorg/apache/tools/ant/Diagnostics;->lambda$listJarFiles$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
