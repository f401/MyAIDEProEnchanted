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

.field private final this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieAdapter;II)V
    .registers 5

    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    iput v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->start:I

    iput v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->end:I

    .line 49
    iput p2, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->start:I

    .line 50
    iput p3, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->end:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    return-object v0
.end method
