.class public Lcom/sun/tools/javac/jvm/Items;
.super Ljava/lang/Object;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/jvm/Items$AssignItem;,
        Lcom/sun/tools/javac/jvm/Items$CondItem;,
        Lcom/sun/tools/javac/jvm/Items$ImmediateItem;,
        Lcom/sun/tools/javac/jvm/Items$IndexedItem;,
        Lcom/sun/tools/javac/jvm/Items$Item;,
        Lcom/sun/tools/javac/jvm/Items$LocalItem;,
        Lcom/sun/tools/javac/jvm/Items$MemberItem;,
        Lcom/sun/tools/javac/jvm/Items$SelfItem;,
        Lcom/sun/tools/javac/jvm/Items$StackItem;,
        Lcom/sun/tools/javac/jvm/Items$StaticItem;
    }
.end annotation


# instance fields
.field code:Lcom/sun/tools/javac/jvm/Code;

.field pool:Lcom/sun/tools/javac/jvm/Pool;

.field private final stackItem:[Lcom/sun/tools/javac/jvm/Items$Item;

.field private final superItem:Lcom/sun/tools/javac/jvm/Items$Item;

.field syms:Lcom/sun/tools/javac/code/Symtab;

.field private final thisItem:Lcom/sun/tools/javac/jvm/Items$Item;

.field types:Lcom/sun/tools/javac/code/Types;

.field private final voidItem:Lcom/sun/tools/javac/jvm/Items$Item;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/jvm/Pool;Lcom/sun/tools/javac/jvm/Code;Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/code/Types;)V
    .registers 9

    const/4 v0, 0x0

    const/16 v3, 0x8

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/sun/tools/javac/jvm/Items$Item;

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Items;->stackItem:[Lcom/sun/tools/javac/jvm/Items$Item;

    .line 83
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 84
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items;->pool:Lcom/sun/tools/javac/jvm/Pool;

    .line 85
    iput-object p4, p0, Lcom/sun/tools/javac/jvm/Items;->types:Lcom/sun/tools/javac/code/Types;

    .line 86
    new-instance v1, Lcom/sun/tools/javac/jvm/Items$1;

    invoke-direct {v1, p0, v3}, Lcom/sun/tools/javac/jvm/Items$1;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Items;->voidItem:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 91
    new-instance v1, Lcom/sun/tools/javac/jvm/Items$SelfItem;

    invoke-direct {v1, p0, v0}, Lcom/sun/tools/javac/jvm/Items$SelfItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Z)V

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Items;->thisItem:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 92
    new-instance v1, Lcom/sun/tools/javac/jvm/Items$SelfItem;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sun/tools/javac/jvm/Items$SelfItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Z)V

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Items;->superItem:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 93
    :goto_28
    if-ge v0, v3, :cond_36

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items;->stackItem:[Lcom/sun/tools/javac/jvm/Items$Item;

    new-instance v2, Lcom/sun/tools/javac/jvm/Items$StackItem;

    invoke-direct {v2, p0, v0}, Lcom/sun/tools/javac/jvm/Items$StackItem;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 94
    :cond_36
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items;->stackItem:[Lcom/sun/tools/javac/jvm/Items$Item;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items;->voidItem:Lcom/sun/tools/javac/jvm/Items$Item;

    aput-object v1, v0, v3

    .line 95
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items;->stackItem:[Lcom/sun/tools/javac/jvm/Items$Item;

    return-object v0
.end method

.method private makeLocalItem(Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/jvm/Items$LocalItem;
    .registers 4

    .line 153
    new-instance v0, Lcom/sun/tools/javac/jvm/Items$LocalItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/tools/javac/jvm/Items$LocalItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;I)V

    return-object v0
.end method


# virtual methods
.method makeAssignItem(Lcom/sun/tools/javac/jvm/Items$Item;)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 3

    .line 192
    new-instance v0, Lcom/sun/tools/javac/jvm/Items$AssignItem;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/jvm/Items$AssignItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/jvm/Items$Item;)V

    return-object v0
.end method

.method makeCondItem(I)Lcom/sun/tools/javac/jvm/Items$CondItem;
    .registers 3

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, p1, v0, v0}, Lcom/sun/tools/javac/jvm/Items;->makeCondItem(ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    return-object v0
.end method

.method makeCondItem(ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Items$CondItem;
    .registers 5

    .line 205
    new-instance v0, Lcom/sun/tools/javac/jvm/Items$CondItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sun/tools/javac/jvm/Items$CondItem;-><init>(Lcom/sun/tools/javac/jvm/Items;ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)V

    return-object v0
.end method

.method makeImmediateItem(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 4

    .line 183
    new-instance v0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method makeIndexedItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 3

    .line 134
    new-instance v0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/jvm/Items$IndexedItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;)V

    return-object v0
.end method

.method makeLocalItem(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/jvm/Items$LocalItem;
    .registers 5

    .line 143
    new-instance v0, Lcom/sun/tools/javac/jvm/Items$LocalItem;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget v2, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sun/tools/javac/jvm/Items$LocalItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;I)V

    return-object v0
.end method

.method makeMemberItem(Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 4

    .line 173
    new-instance v0, Lcom/sun/tools/javac/jvm/Items$MemberItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/tools/javac/jvm/Items$MemberItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Symbol;Z)V

    return-object v0
.end method

.method makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items;->stackItem:[Lcom/sun/tools/javac/jvm/Items$Item;

    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method makeStaticItem(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 3

    .line 162
    new-instance v0, Lcom/sun/tools/javac/jvm/Items$StaticItem;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/jvm/Items$StaticItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Symbol;)V

    return-object v0
.end method

.method makeSuperItem()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items;->superItem:Lcom/sun/tools/javac/jvm/Items$Item;

    return-object v0
.end method

.method makeThisItem()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items;->thisItem:Lcom/sun/tools/javac/jvm/Items$Item;

    return-object v0
.end method

.method makeVoidItem()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items;->voidItem:Lcom/sun/tools/javac/jvm/Items$Item;

    return-object v0
.end method
