.class final Lcom/s1243808733/android/dex/Dex$ProtoIdTable;
.super Ljava/util/AbstractList;
.source "Dex.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProtoIdTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/s1243808733/android/dex/ProtoId;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dex/Dex;)V
    .registers 2

    .line 750
    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$ProtoIdTable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dex/ProtoId;
    .registers 4

    .line 753
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$smcheckBounds(II)V

    .line 754
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v1

    iget-object v1, v1, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object p1

    .line 755
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readProtoId()Lcom/s1243808733/android/dex/ProtoId;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 750
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;->get(I)Lcom/s1243808733/android/dex/ProtoId;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 759
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    return v0
.end method
