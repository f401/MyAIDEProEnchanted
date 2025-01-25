.class enum Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "PseudoClassIdents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final UNSUPPORTED:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final active:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;",
            ">;"
        }
    .end annotation
.end field

.field public static final checked:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final disabled:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final empty:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final enabled:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final first_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final first_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final focus:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final hover:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final indeterminate:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final lang:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final last_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final link:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final not:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final nth_last_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final only_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final only_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final root:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final target:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final visited:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;


# direct methods
.method static final constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "target"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->target:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "root"

    invoke-direct {v1, v2, v4}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->root:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "nth_child"

    invoke-direct {v1, v2, v5}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "nth_last_child"

    invoke-direct {v1, v2, v6}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "nth_of_type"

    invoke-direct {v1, v2, v7}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "nth_last_of_type"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "first_child"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->first_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "last_child"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->last_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "first_of_type"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->first_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "last_of_type"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "only_child"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->only_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "only_of_type"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->only_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "empty"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->empty:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "not"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->not:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "lang"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->lang:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "link"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->link:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "visited"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->visited:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "hover"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->hover:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "active"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->active:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "focus"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->focus:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "enabled"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->enabled:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "disabled"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->disabled:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "checked"

    const/16 v3, 0x16

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->checked:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "indeterminate"

    const/16 v3, 0x17

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->indeterminate:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v2, "UNSUPPORTED"

    const/16 v3, 0x18

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->UNSUPPORTED:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const/16 v1, 0x19

    new-array v1, v1, [Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->target:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v2, v1, v0

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->root:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v2, v1, v4

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v2, v1, v5

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v2, v1, v6

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->first_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->last_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->first_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->only_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->only_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->empty:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->not:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->lang:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->link:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->visited:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->hover:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->active:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->focus:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->enabled:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->disabled:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->checked:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->indeterminate:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->UNSUPPORTED:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    aput-object v3, v1, v2

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->cache:Ljava/util/Map;

    invoke-static {}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->values()[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    move-result-object v1

    :goto_1a5
    array-length v2, v1

    if-lt v0, v2, :cond_1a9

    return-void

    :cond_1a9
    aget-object v2, v1, v0

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->UNSUPPORTED:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v2, v3, :cond_1c0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->cache:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a5
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
    .registers 2

    sget-object v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->UNSUPPORTED:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
    .registers 5

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-lt v0, v2, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static final values()[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
    .registers 1

    sget-object v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    return-object v0
.end method
