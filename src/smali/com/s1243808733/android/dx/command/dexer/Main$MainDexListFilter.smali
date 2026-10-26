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
.field final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 2

    .line 1184
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-static {p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$smfixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetclassesInMainDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
