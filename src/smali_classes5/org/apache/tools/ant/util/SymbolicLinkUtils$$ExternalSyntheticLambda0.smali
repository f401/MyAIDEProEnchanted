.class public final synthetic Lorg/apache/tools/ant/util/SymbolicLinkUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/SymbolicLinkUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/util/SymbolicLinkUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->lambda$isDanglingSymbolicLink$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
