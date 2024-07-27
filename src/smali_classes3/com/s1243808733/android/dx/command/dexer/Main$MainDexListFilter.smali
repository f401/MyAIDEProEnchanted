.class Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainDexListFilter"
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;)V
    .registers 2

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;)Lcom/s1243808733/android/dx/command/dexer/Main;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1184
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-static {p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$1000049(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000023(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
