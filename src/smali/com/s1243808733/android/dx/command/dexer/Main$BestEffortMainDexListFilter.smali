.class Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;
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
    name = "BestEffortMainDexListFilter"
.end annotation


# instance fields
.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;)V
    .registers 6

    .line 1200
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    .line 1201
    invoke-static {p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetclassesInMainDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1202
    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$smfixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1203
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1204
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3d

    .line 1206
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1207
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    :cond_3d
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_41
    return-void
.end method

.method private getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1233
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_e

    .line 1235
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_e
    return-object p1
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .registers 5

    .line 1215
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 1216
    invoke-static {p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$smfixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1217
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_32

    .line 1220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1221
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return v1

    :cond_32
    const/4 p1, 0x0

    return p1

    :cond_34
    return v1
.end method
