.class Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;
.super Ljava/lang/Object;
.source "DependencieAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/dependencies/DependencieAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Highlight"
.end annotation


# instance fields
.field end:I

.field start:I

.field final this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieAdapter;II)V
    .registers 4

    .line 48
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p2, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->start:I

    .line 50
    iput p3, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->end:I

    return-void
.end method
