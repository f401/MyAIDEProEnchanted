.class public Lcom/luajava/LuaTable$LuaEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luajava/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LuaEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final this$0:Lcom/luajava/LuaTable;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaTable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable;",
            "TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/LuaTable$LuaEntry;->this$0:Lcom/luajava/LuaTable;

    iput-object p2, p0, Lcom/luajava/LuaTable$LuaEntry;->mKey:Ljava/lang/Object;

    iput-object p3, p0, Lcom/luajava/LuaTable$LuaEntry;->mValue:Ljava/lang/Object;

    return-void
.end method

.method static access$0(Lcom/luajava/LuaTable$LuaEntry;)Lcom/luajava/LuaTable;
    .registers 2

    iget-object v0, p0, Lcom/luajava/LuaTable$LuaEntry;->this$0:Lcom/luajava/LuaTable;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/luajava/LuaTable$LuaEntry;->mKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/luajava/LuaTable$LuaEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/luajava/LuaTable$LuaEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    iput-object p1, p0, Lcom/luajava/LuaTable$LuaEntry;->mValue:Ljava/lang/Object;

    return-object v0
.end method
