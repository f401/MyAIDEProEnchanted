.class final Lcom/s1243808733/android/dex/Dex$ClassDefIterable;
.super Ljava/lang/Object;
.source "Dex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClassDefIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/s1243808733/android/dex/ClassDef;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dex/Dex;)V
    .registers 2

    .line 811
    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$ClassDefIterable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/Dex$ClassDefIterable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/s1243808733/android/dex/ClassDef;",
            ">;"
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    .line 815
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1f

    .line 816
    :cond_17
    new-instance v0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;

    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterable;->this$0:Lcom/s1243808733/android/dex/Dex;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$ClassDefIterator-IA;)V

    :goto_1f
    return-object v0
.end method
