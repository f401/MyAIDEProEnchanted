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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;)V
    .registers 7

    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    .line 1201
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000023(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1209
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1201
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1202
    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$1000049(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1203
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1204
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1205
    if-nez v0, :cond_1

    .line 1206
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1207
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static access$0(Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;)Lcom/s1243808733/android/dx/command/dexer/Main;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    return-object v0
.end method

.method private getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1233
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1234
    if-ltz v0, :cond_0

    .line 1235
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1237
    :cond_0
    return-object p1
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    .line 1215
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1216
    invoke-static {p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$1000049(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1217
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1219
    if-eqz v0, :cond_1

    .line 1220
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1222
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1226
    :cond_1
    const/4 v0, 0x0

    .line 1228
    :goto_0
    return v0

    .line 1220
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1221
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1222
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1228
    goto :goto_0
.end method
