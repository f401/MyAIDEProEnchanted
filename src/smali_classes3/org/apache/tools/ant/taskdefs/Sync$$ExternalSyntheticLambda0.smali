.class public final synthetic Lorg/apache/tools/ant/taskdefs/Sync$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/DirectoryScanner;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/DirectoryScanner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Sync$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/DirectoryScanner;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/DirectoryScanner;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setCaseSensitive(Z)V

    return-void
.end method
