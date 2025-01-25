.class public Lcom/aide/uidesigner/N;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/uidesigner/N$a;,
        Lcom/aide/uidesigner/N$b;
    }
.end annotation


# static fields
.field public static DW:Lcom/aide/uidesigner/N$a;

.field private static EQ:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static FH:Lcom/aide/uidesigner/N$a;

.field public static Hw:Lcom/aide/uidesigner/N$a;

.field public static VH:[Lcom/aide/uidesigner/N$a;

.field public static Zo:Lcom/aide/uidesigner/N$a;

.field public static gn:[Lcom/aide/uidesigner/N$a;

.field public static j6:Lcom/aide/uidesigner/N$a;

.field private static tp:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static u7:[Lcom/aide/uidesigner/N$a;

.field public static v5:Lcom/aide/uidesigner/N$a;


# direct methods
.method static constructor <clinit>()V
    .registers 118
    .annotation runtime Labcd/su;
        method = 0x1bd822e41fa3303cL
    .end annotation

    const-string v1, "android.widget.AbsoluteLayout$LayoutParams"

    const-string v2, "android.widget.TableRow$LayoutParams"

    const-string v3, "height"

    const-string v4, "width"

    const-string v5, "android.view.ViewGroup$LayoutParams"

    const-string v6, "android.widget.RatingBar"

    const-string v7, "android.widget.ProgressBar"

    const-string v8, "android.widget.Spinner"

    const-string v9, "android.widget.LinearLayout"

    const-string v10, "android.widget.GridLayout"

    const-string v11, "android.view.ViewGroup$MarginLayoutParams"

    const-string v12, "android.widget.Switch"

    const-string v13, "android.widget.ImageView"

    const-string v14, "android.view.View"

    const-string v15, "android.widget.TextView"

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    :try_start_22
    const-class v6, Lcom/aide/uidesigner/N;

    move-object/from16 v18, v8

    const-wide v7, -0x2703a589b2afad3L

    invoke-static {v6, v7, v8, v7, v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v6, Lcom/aide/uidesigner/N;->tp:Z

    if-eqz v6, :cond_3b

    const/4 v6, 0x0

    const-wide v7, -0x2bcfc5400f7211a3L  # -3.466598294562935E97

    invoke-static {v7, v8, v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_3b
    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.RelativeLayout$LayoutParams"

    const-string v21, "layout_toRightOf"

    const-string v22, "ProxyRelativeLayoutParams"

    const-string v23, "setRightOf()"

    sget-object v24, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v24}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->j6:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v26, "android.widget.RelativeLayout$LayoutParams"

    const-string v27, "layout_toLeftOf"

    const-string v28, "ProxyRelativeLayoutParams"

    const-string v29, "setLeftOf()"

    sget-object v30, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v30}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->DW:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.RelativeLayout$LayoutParams"

    const-string v21, "layout_below"

    const-string v22, "ProxyRelativeLayoutParams"

    const-string v23, "setBelow()"

    sget-object v24, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v24}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->FH:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v26, "android.widget.RelativeLayout$LayoutParams"

    const-string v27, "layout_above"

    const-string v28, "ProxyRelativeLayoutParams"

    const-string v29, "setAbove()"

    sget-object v30, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v30}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->Hw:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v7, "layout_width"

    sget-object v8, Lcom/aide/uidesigner/N$b;->FH:Lcom/aide/uidesigner/N$b;

    invoke-direct {v6, v5, v7, v4, v8}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->v5:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v7, "layout_height"

    sget-object v8, Lcom/aide/uidesigner/N$b;->FH:Lcom/aide/uidesigner/N$b;

    invoke-direct {v6, v5, v7, v3, v8}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->Zo:Lcom/aide/uidesigner/N$a;

    sget-object v5, Lcom/aide/uidesigner/N;->v5:Lcom/aide/uidesigner/N$a;

    new-instance v7, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.view.ViewGroup$MarginLayoutParams"

    const-string v21, "layout_margin"

    const-string v22, "ProxyMarginLayoutParams"

    const-string v23, "setMargin()"

    sget-object v24, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v19, v7

    invoke-direct/range {v19 .. v24}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v8, Lcom/aide/uidesigner/N$a;

    move-object/from16 v19, v12

    const-string v12, "layout_marginLeft"

    move-object/from16 v20, v13

    const-string v13, "leftMargin"

    move-object/from16 v21, v4

    sget-object v4, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v8, v11, v12, v13, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v4, Lcom/aide/uidesigner/N$a;

    const-string v12, "layout_marginRight"

    const-string v13, "rightMargin"

    move-object/from16 v22, v3

    sget-object v3, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v4, v11, v12, v13, v3}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v3, Lcom/aide/uidesigner/N$a;

    const-string v12, "layout_marginTop"

    const-string v13, "topMargin"

    move-object/from16 v23, v15

    sget-object v15, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v3, v11, v12, v13, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v13, "layout_marginBottom"

    const-string v15, "bottomMargin"

    move-object/from16 v24, v10

    sget-object v10, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v11, v13, v15, v10}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v10, Lcom/aide/uidesigner/N$a;

    const-string v13, "layout_marginStart"

    const-string v15, "setMarginStart()"

    move-object/from16 v25, v9

    sget-object v9, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v10, v11, v13, v15, v9}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v9, Lcom/aide/uidesigner/N$a;

    const-string v13, "layout_marginEnd"

    const-string v15, "setMarginEnd()"

    move-object/from16 v26, v14

    sget-object v14, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v9, v11, v13, v15, v14}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v11, Lcom/aide/uidesigner/N$a;

    const-string v28, "android.widget.LinearLayout$LayoutParams"

    const-string v29, "layout_gravity"

    const-string v30, "gravity"

    sget-object v31, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v32, "android.view.Gravity"

    const/16 v33, 0x0

    move-object/from16 v27, v11

    invoke-direct/range {v27 .. v33}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.widget.LinearLayout$LayoutParams"

    const-string v15, "layout_weight"

    move-object/from16 v27, v11

    const-string v11, "weight"

    move-object/from16 v28, v9

    sget-object v9, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v13, v14, v15, v11, v9}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sget-object v9, Lcom/aide/uidesigner/N;->FH:Lcom/aide/uidesigner/N$a;

    sget-object v11, Lcom/aide/uidesigner/N;->Hw:Lcom/aide/uidesigner/N$a;

    sget-object v14, Lcom/aide/uidesigner/N;->j6:Lcom/aide/uidesigner/N$a;

    sget-object v15, Lcom/aide/uidesigner/N;->DW:Lcom/aide/uidesigner/N$a;

    new-instance v35, Lcom/aide/uidesigner/N$a;

    const-string v30, "android.widget.RelativeLayout$LayoutParams"

    const-string v31, "layout_toEndOf"

    const-string v32, "ProxyRelativeLayoutParams"

    const-string v33, "setEndOf()"

    sget-object v34, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v29, v35

    invoke-direct/range {v29 .. v34}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v29, Lcom/aide/uidesigner/N$a;

    const-string v37, "android.widget.RelativeLayout$LayoutParams"

    const-string v38, "layout_toStartOf"

    const-string v39, "ProxyRelativeLayoutParams"

    const-string v40, "setStartOf()"

    sget-object v41, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v36, v29

    invoke-direct/range {v36 .. v41}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v30, Lcom/aide/uidesigner/N$a;

    const-string v43, "android.widget.RelativeLayout$LayoutParams"

    const-string v44, "layout_alignBaseline"

    const-string v45, "ProxyRelativeLayoutParams"

    const-string v46, "setAlignBaseline()"

    sget-object v47, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v42, v30

    invoke-direct/range {v42 .. v47}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v31, Lcom/aide/uidesigner/N$a;

    const-string v37, "android.widget.RelativeLayout$LayoutParams"

    const-string v38, "layout_alignBottom"

    const-string v39, "ProxyRelativeLayoutParams"

    const-string v40, "setAlignBottom()"

    sget-object v41, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v36, v31

    invoke-direct/range {v36 .. v41}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v32, Lcom/aide/uidesigner/N$a;

    const-string v43, "android.widget.RelativeLayout$LayoutParams"

    const-string v44, "layout_alignTop"

    const-string v45, "ProxyRelativeLayoutParams"

    const-string v46, "setAlignTop()"

    sget-object v47, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v42, v32

    invoke-direct/range {v42 .. v47}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v33, Lcom/aide/uidesigner/N$a;

    const-string v37, "android.widget.RelativeLayout$LayoutParams"

    const-string v38, "layout_alignEnd"

    const-string v39, "ProxyRelativeLayoutParams"

    const-string v40, "setAlignEnd()"

    sget-object v41, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v36, v33

    invoke-direct/range {v36 .. v41}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v34, Lcom/aide/uidesigner/N$a;

    const-string v43, "android.widget.RelativeLayout$LayoutParams"

    const-string v44, "layout_alignStart"

    const-string v45, "ProxyRelativeLayoutParams"

    const-string v46, "setAlignStart()"

    sget-object v47, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v42, v34

    invoke-direct/range {v42 .. v47}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v42, Lcom/aide/uidesigner/N$a;

    const-string v37, "android.widget.RelativeLayout$LayoutParams"

    const-string v38, "layout_alignRight"

    const-string v39, "ProxyRelativeLayoutParams"

    const-string v40, "setAlignRight()"

    sget-object v41, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v36, v42

    invoke-direct/range {v36 .. v41}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v36, Lcom/aide/uidesigner/N$a;

    const-string v44, "android.widget.RelativeLayout$LayoutParams"

    const-string v45, "layout_alignLeft"

    const-string v46, "ProxyRelativeLayoutParams"

    const-string v47, "setAlignLeft()"

    sget-object v48, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v43, v36

    invoke-direct/range {v43 .. v48}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v37, Lcom/aide/uidesigner/N$a;

    const-string v50, "android.widget.RelativeLayout$LayoutParams"

    const-string v51, "layout_alignParentBottom"

    const-string v52, "ProxyRelativeLayoutParams"

    const-string v53, "setAlignParentBottom()"

    sget-object v54, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v49, v37

    invoke-direct/range {v49 .. v54}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v38, Lcom/aide/uidesigner/N$a;

    const-string v44, "android.widget.RelativeLayout$LayoutParams"

    const-string v45, "layout_alignParentEnd"

    const-string v46, "ProxyRelativeLayoutParams"

    const-string v47, "setAlignParentEnd()"

    sget-object v48, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v43, v38

    invoke-direct/range {v43 .. v48}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v39, Lcom/aide/uidesigner/N$a;

    const-string v50, "android.widget.RelativeLayout$LayoutParams"

    const-string v51, "layout_alignParentLeft"

    const-string v52, "ProxyRelativeLayoutParams"

    const-string v53, "setAlignParentLeft()"

    sget-object v54, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v49, v39

    invoke-direct/range {v49 .. v54}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v40, Lcom/aide/uidesigner/N$a;

    const-string v44, "android.widget.RelativeLayout$LayoutParams"

    const-string v45, "layout_alignParentRight"

    const-string v46, "ProxyRelativeLayoutParams"

    const-string v47, "setAlignParentRight()"

    sget-object v48, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v43, v40

    invoke-direct/range {v43 .. v48}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v41, Lcom/aide/uidesigner/N$a;

    const-string v50, "android.widget.RelativeLayout$LayoutParams"

    const-string v51, "layout_alignParentStart"

    const-string v52, "ProxyRelativeLayoutParams"

    const-string v53, "setAlignParentStart()"

    sget-object v54, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v49, v41

    invoke-direct/range {v49 .. v54}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v49, Lcom/aide/uidesigner/N$a;

    const-string v44, "android.widget.RelativeLayout$LayoutParams"

    const-string v45, "layout_alignParentTop"

    const-string v46, "ProxyRelativeLayoutParams"

    const-string v47, "setAlignParentTop()"

    sget-object v48, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v43, v49

    invoke-direct/range {v43 .. v48}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v43, Lcom/aide/uidesigner/N$a;

    const-string v51, "android.widget.RelativeLayout$LayoutParams"

    const-string v52, "layout_centerHorizontal"

    const-string v53, "ProxyRelativeLayoutParams"

    const-string v54, "setCenterHorizontal()"

    sget-object v55, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v50, v43

    invoke-direct/range {v50 .. v55}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v44, Lcom/aide/uidesigner/N$a;

    const-string v57, "android.widget.RelativeLayout$LayoutParams"

    const-string v58, "layout_centerVertical"

    const-string v59, "ProxyRelativeLayoutParams"

    const-string v60, "setCenterVertical()"

    sget-object v61, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v56, v44

    invoke-direct/range {v56 .. v61}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v45, Lcom/aide/uidesigner/N$a;

    const-string v51, "android.widget.RelativeLayout$LayoutParams"

    const-string v52, "layout_centerInParent"

    const-string v53, "ProxyRelativeLayoutParams"

    const-string v54, "setCenterInParent()"

    sget-object v55, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v50, v45

    invoke-direct/range {v50 .. v55}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v46, Lcom/aide/uidesigner/N$a;

    const-string v57, "android.widget.GridLayout$LayoutParams"

    const-string v58, "layout_gravity"

    const-string v59, "ProxyGridLayoutParams"

    const-string v60, "setGravity()"

    sget-object v61, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v62, "android.view.Gravity"

    const/16 v63, 0x0

    move-object/from16 v56, v46

    invoke-direct/range {v56 .. v63}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v47, Lcom/aide/uidesigner/N$a;

    const-string v51, "android.widget.GridLayout$LayoutParams"

    const-string v52, "layout_column"

    const-string v53, "ProxyGridLayoutParams"

    const-string v54, "setColumn()"

    sget-object v55, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v50, v47

    invoke-direct/range {v50 .. v55}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v48, Lcom/aide/uidesigner/N$a;

    const-string v57, "android.widget.GridLayout$LayoutParams"

    const-string v58, "layout_columnSpan"

    const-string v59, "ProxyGridLayoutParams"

    const-string v60, "setColumnSpan()"

    sget-object v61, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v56, v48

    invoke-direct/range {v56 .. v61}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v56, Lcom/aide/uidesigner/N$a;

    const-string v51, "android.widget.GridLayout$LayoutParams"

    const-string v52, "layout_row"

    const-string v53, "ProxyGridLayoutParams"

    const-string v54, "setRow()"

    sget-object v55, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v50, v56

    invoke-direct/range {v50 .. v55}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v50, Lcom/aide/uidesigner/N$a;

    const-string v58, "android.widget.GridLayout$LayoutParams"

    const-string v59, "layout_rowSpan"

    const-string v60, "ProxyGridLayoutParams"

    const-string v61, "setRowSpan()"

    sget-object v62, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v57, v50

    invoke-direct/range {v57 .. v62}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v51, Lcom/aide/uidesigner/N$a;

    const-string v64, "android.widget.FrameLayout$LayoutParams"

    const-string v65, "layout_gravity"

    const-string v66, "gravity"

    sget-object v67, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v68, "android.view.Gravity"

    const/16 v69, 0x0

    move-object/from16 v63, v51

    invoke-direct/range {v63 .. v69}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v52, v15

    new-instance v15, Lcom/aide/uidesigner/N$a;

    move-object/from16 v53, v14

    const-string v14, "layout_span"

    move-object/from16 v54, v11

    const-string v11, "span"

    move-object/from16 v55, v9

    sget-object v9, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct {v15, v2, v14, v11, v9}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v9, Lcom/aide/uidesigner/N$a;

    const-string v11, "layout_column"

    const-string v14, "column"

    move-object/from16 v57, v15

    sget-object v15, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct {v9, v2, v11, v14, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v2, Lcom/aide/uidesigner/N$a;

    const-string v11, "layout_x"

    const-string v14, "x"

    sget-object v15, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v2, v1, v11, v14, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v11, Lcom/aide/uidesigner/N$a;

    const-string v14, "layout_y"

    const-string v15, "y"

    move-object/from16 v58, v2

    sget-object v2, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v11, v1, v14, v15, v2}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    const/16 v1, 0x2b

    new-array v2, v1, [Lcom/aide/uidesigner/N$a;

    const/4 v14, 0x0

    aput-object v5, v2, v14

    const/4 v5, 0x1

    aput-object v6, v2, v5

    const/4 v6, 0x2

    aput-object v7, v2, v6

    const/4 v7, 0x3

    aput-object v8, v2, v7

    const/4 v7, 0x4

    aput-object v4, v2, v7

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    aput-object v12, v2, v3

    const/4 v3, 0x7

    aput-object v10, v2, v3

    const/16 v3, 0x8

    aput-object v28, v2, v3

    const/16 v3, 0x9

    aput-object v27, v2, v3

    const/16 v3, 0xa

    aput-object v13, v2, v3

    const/16 v3, 0xb

    aput-object v55, v2, v3

    const/16 v3, 0xc

    aput-object v54, v2, v3

    const/16 v3, 0xd

    aput-object v53, v2, v3

    const/16 v3, 0xe

    aput-object v52, v2, v3

    const/16 v3, 0xf

    aput-object v35, v2, v3

    const/16 v3, 0x10

    aput-object v29, v2, v3

    const/16 v3, 0x11

    aput-object v30, v2, v3

    const/16 v3, 0x12

    aput-object v31, v2, v3

    const/16 v3, 0x13

    aput-object v32, v2, v3

    const/16 v3, 0x14

    aput-object v33, v2, v3

    const/16 v3, 0x15

    aput-object v34, v2, v3

    const/16 v3, 0x16

    aput-object v42, v2, v3

    const/16 v3, 0x17

    aput-object v36, v2, v3

    const/16 v3, 0x18

    aput-object v37, v2, v3

    const/16 v3, 0x19

    aput-object v38, v2, v3

    const/16 v3, 0x1a

    aput-object v39, v2, v3

    const/16 v3, 0x1b

    aput-object v40, v2, v3

    const/16 v3, 0x1c

    aput-object v41, v2, v3

    const/16 v3, 0x1d

    aput-object v49, v2, v3

    const/16 v3, 0x1e

    aput-object v43, v2, v3

    const/16 v3, 0x1f

    aput-object v44, v2, v3

    const/16 v3, 0x20

    aput-object v45, v2, v3

    const/16 v3, 0x21

    aput-object v46, v2, v3

    const/16 v3, 0x22

    aput-object v47, v2, v3

    const/16 v3, 0x23

    aput-object v48, v2, v3

    const/16 v3, 0x24

    aput-object v56, v2, v3

    const/16 v3, 0x25

    aput-object v50, v2, v3

    const/16 v3, 0x26

    aput-object v51, v2, v3

    const/16 v3, 0x27

    aput-object v57, v2, v3

    const/16 v3, 0x28

    aput-object v9, v2, v3

    const/16 v3, 0x29

    aput-object v58, v2, v3

    const/16 v3, 0x2a

    aput-object v11, v2, v3

    sput-object v2, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    new-instance v2, Lcom/aide/uidesigner/N$a;

    const-string v28, "android.view.View"

    const-string v29, "padding"

    const-string v30, "ProxyViewPaddings"

    const-string v31, "setPadding()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v32}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v3, Lcom/aide/uidesigner/N$a;

    const-string v8, "android.view.View"

    const-string v9, "paddingLeft"

    const-string v10, "ProxyViewPaddings"

    const-string v11, "setPaddingLeft()"

    sget-object v12, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v4, Lcom/aide/uidesigner/N$a;

    const-string v28, "android.view.View"

    const-string v29, "paddingRight"

    const-string v30, "ProxyViewPaddings"

    const-string v31, "setPaddingRight()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v27, v4

    invoke-direct/range {v27 .. v32}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v13, Lcom/aide/uidesigner/N$a;

    const-string v8, "android.view.View"

    const-string v9, "paddingTop"

    const-string v10, "ProxyViewPaddings"

    const-string v11, "setPaddingTop()"

    sget-object v12, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v7, Lcom/aide/uidesigner/N$a;

    const-string v28, "android.view.View"

    const-string v29, "paddingBottom"

    const-string v30, "ProxyViewPaddings"

    const-string v31, "setPaddingBottom()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v27, v7

    invoke-direct/range {v27 .. v32}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v8, Lcom/aide/uidesigner/N$a;

    const-string v34, "android.view.View"

    const-string v35, "paddingStart"

    const-string v36, "ProxyViewPaddings"

    const-string v37, "setPaddingStart()"

    sget-object v38, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v33, v8

    invoke-direct/range {v33 .. v38}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v9, Lcom/aide/uidesigner/N$a;

    const-string v28, "android.view.View"

    const-string v29, "paddingEnd"

    const-string v30, "ProxyViewPaddings"

    const-string v31, "setPaddingEnd()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v27, v9

    invoke-direct/range {v27 .. v32}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v10, Lcom/aide/uidesigner/N$a;

    const-string v11, "alpha"

    const-string v12, "setAlpha()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v1, v26

    invoke-direct {v10, v1, v11, v12, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v11, Lcom/aide/uidesigner/N$a;

    const-string v12, "scaleX"

    const-string v15, "setScaleX()"

    sget-object v6, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v11, v1, v12, v15, v6}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v12, "scaleY"

    const-string v15, "setScaleY()"

    sget-object v5, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v6, v1, v12, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v12, "translationX"

    const-string v15, "setTranslationX()"

    sget-object v14, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v1, v12, v15, v14}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "translationY"

    const-string v15, "setTranslationY()"

    move-object/from16 v30, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v1, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "translationZ"

    const-string v15, "setTranslationZ()"

    move-object/from16 v31, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v1, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "rotation"

    const-string v15, "setRotation()"

    move-object/from16 v32, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v1, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "rotationX"

    const-string v15, "setRotationX()"

    move-object/from16 v33, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v1, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "rotationY"

    const-string v15, "setRotationY()"

    move-object/from16 v34, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v1, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "elevation"

    const-string v15, "setElevation()"

    move-object/from16 v35, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v1, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "minHeight"

    const-string v15, "setMinimumHeight()"

    move-object/from16 v36, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v1, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "minWidth"

    const-string v15, "setMinimumWidth()"

    move-object/from16 v37, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v1, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v39, "android.view.View"

    const-string v40, "textAlignment"

    const-string v41, "setTextAlignment()"

    sget-object v42, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v43, "android.view.View"

    const-string v44, "TEXT_ALIGNMENT"

    move-object/from16 v38, v12

    invoke-direct/range {v38 .. v44}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/aide/uidesigner/N$a;

    const-string v15, "visibility"

    move-object/from16 v38, v12

    const-string v12, "setVisibility()"

    move-object/from16 v39, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    invoke-direct {v14, v1, v15, v12, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v12, "background"

    const-string v15, "setBackgroundDrawable()"

    move-object/from16 v40, v14

    sget-object v14, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v1, v12, v15, v14}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "onClick"

    const-string v15, ""

    move-object/from16 v41, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->QX:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v1, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v5, "android.view.ViewGroup"

    const-string v14, "clipChildren"

    const-string v15, "setClipChildren()"

    move-object/from16 v42, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v5, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v12, "android.view.ViewGroup"

    const-string v14, "clipToPadding"

    const-string v15, "setClipToPadding()"

    move-object/from16 v43, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v12, "orientation"

    const-string v14, "setOrientation()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    move-object/from16 v44, v5

    move-object/from16 v5, v25

    invoke-direct {v1, v5, v12, v14, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v46, "android.widget.LinearLayout"

    const-string v47, "gravity"

    const-string v48, "setGravity()"

    sget-object v49, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v50, "android.view.Gravity"

    const/16 v51, 0x0

    move-object/from16 v45, v12

    invoke-direct/range {v45 .. v51}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/aide/uidesigner/N$a;

    const-string v15, "baselineAligned"

    move-object/from16 v25, v12

    const-string v12, "setBaselineAligned()"

    move-object/from16 v45, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v14, v5, v15, v12, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v12, "baselineAlignedChildIndex"

    const-string v15, "setBaselineAlignedChildIndex()"

    move-object/from16 v46, v14

    sget-object v14, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v5, v12, v15, v14}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "measureWithLargestChild"

    const-string v15, "setMeasureWithLargestChildEnabled()"

    move-object/from16 v47, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v5, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "weightSum"

    const-string v15, "setWeightSum()"

    move-object/from16 v48, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v5, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v50, "android.widget.RelativeLayout"

    const-string v51, "gravity"

    const-string v52, "setGravity()"

    sget-object v53, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v54, "android.view.Gravity"

    const/16 v55, 0x0

    move-object/from16 v49, v5

    invoke-direct/range {v49 .. v55}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.widget.RelativeLayout"

    const-string v15, "ignoreGravity"

    move-object/from16 v49, v5

    const-string v5, "setIgnoreGravity()"

    move-object/from16 v50, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v14, v15, v5, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v52, "android.widget.FrameLayout"

    const-string v53, "foregroundGravity"

    const-string v54, "setForegroundGravity()"

    sget-object v55, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v56, "android.view.Gravity"

    const/16 v57, 0x0

    move-object/from16 v51, v1

    invoke-direct/range {v51 .. v57}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.widget.FrameLayout"

    const-string v15, "measureAllChildren"

    move-object/from16 v51, v1

    const-string v1, "setMeasureAllChildren()"

    move-object/from16 v52, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v14, v15, v1, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v12, "columnCount"

    const-string v14, "setColumnCount()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v53, v5

    move-object/from16 v5, v24

    invoke-direct {v1, v5, v12, v14, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "rowCount"

    const-string v15, "setRowCount()"

    move-object/from16 v24, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v5, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "orientation"

    const-string v15, "setOrientation()"

    move-object/from16 v54, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v5, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "columnOrderPreserved"

    const-string v15, "setColumnOrderPreserved()"

    move-object/from16 v55, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v5, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "rowOrderPreserved"

    const-string v15, "setRowOrderPreserved()"

    move-object/from16 v56, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v5, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "useDefaultMargins"

    const-string v15, "setUseDefaultMargins()"

    move-object/from16 v57, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v5, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v59, "android.widget.GridLayout"

    const-string v60, "alignmentMode"

    const-string v61, "setAlignmentMode()"

    sget-object v62, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v63, "android.widget.GridLayout"

    const-string v64, "ALIGN"

    move-object/from16 v58, v1

    invoke-direct/range {v58 .. v64}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v66, "android.widget.TextView"

    const-string v67, "textAppearance"

    const-string v68, "ProxyTextView"

    const-string v69, "setTextAppearance()"

    sget-object v70, Lcom/aide/uidesigner/N$b;->Ws:Lcom/aide/uidesigner/N$b;

    move-object/from16 v65, v5

    invoke-direct/range {v65 .. v70}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v14, Lcom/aide/uidesigner/N$a;

    const-string v15, "text"

    move-object/from16 v58, v5

    const-string v5, "setText()"

    move-object/from16 v59, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    move-object/from16 v60, v12

    move-object/from16 v12, v23

    invoke-direct {v14, v12, v15, v5, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v5, "hint"

    const-string v15, "setHint()"

    move-object/from16 v23, v14

    sget-object v14, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v5, v15, v14}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "setHeight()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v61, v1

    move-object/from16 v1, v22

    invoke-direct {v5, v12, v1, v14, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "setWidth()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v22, v5

    move-object/from16 v5, v21

    invoke-direct {v1, v12, v5, v14, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "maxHeight"

    const-string v15, "setMaxHeight()"

    move-object/from16 v21, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "maxWidth"

    const-string v15, "setMaxWidth()"

    move-object/from16 v62, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "ems"

    const-string v15, "setEms()"

    move-object/from16 v63, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "minEms"

    const-string v15, "setMinEms()"

    move-object/from16 v64, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "maxEms"

    const-string v15, "setMaxEms()"

    move-object/from16 v65, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v67, "android.widget.TextView"

    const-string v68, "gravity"

    const-string v69, "setGravity()"

    sget-object v70, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v71, "android.view.Gravity"

    const/16 v72, 0x0

    move-object/from16 v66, v1

    invoke-direct/range {v66 .. v72}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/aide/uidesigner/N$a;

    const-string v15, "textScaleX"

    move-object/from16 v66, v1

    const-string v1, "setTextScaleX()"

    move-object/from16 v67, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v14, v12, v15, v1, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v5, "textScaleY"

    const-string v15, "setTextScaleY()"

    move-object/from16 v68, v14

    sget-object v14, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v5, v15, v14}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "textIsSelectable"

    const-string v15, "setTextIsSelectable()"

    move-object/from16 v69, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "singleLine"

    const-string v15, "setSingleLine()"

    move-object/from16 v70, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "lines"

    const-string v15, "setLines()"

    move-object/from16 v71, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "minLines"

    const-string v15, "setMinLines()"

    move-object/from16 v72, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "maxLines"

    const-string v15, "setMaxLines()"

    move-object/from16 v73, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "textColor"

    const-string v15, "setTextColor()"

    move-object/from16 v74, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "textColorHighlight"

    const-string v15, "setHighlightColor()"

    move-object/from16 v75, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "textColorHint"

    const-string v15, "setHintTextColor()"

    move-object/from16 v76, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "textColorLink"

    const-string v15, "setLinkTextColor()"

    move-object/from16 v77, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v79, "android.widget.TextView"

    const-string v80, "ellipsize"

    const-string v81, "setEllipsize()"

    sget-object v82, Lcom/aide/uidesigner/N$b;->DW:Lcom/aide/uidesigner/N$b;

    const-string v83, "android.text.TextUtils$TruncateAt"

    const/16 v84, 0x0

    move-object/from16 v78, v1

    invoke-direct/range {v78 .. v84}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/aide/uidesigner/N$a;

    const-string v86, "android.widget.TextView"

    const-string v87, "textStyle"

    const-string v88, "ProxyTextView"

    const-string v89, "setTextStyle()"

    sget-object v90, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v91, "ProxyTextView"

    const-string v92, "TEXTSTYLE"

    move-object/from16 v85, v14

    invoke-direct/range {v85 .. v92}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/aide/uidesigner/N$a;

    const-string v79, "android.widget.TextView"

    const-string v80, "typeface"

    const-string v81, "ProxyTextView"

    const-string v82, "setTypeface()"

    sget-object v83, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v84, "ProxyTextView"

    const-string v85, "TYPEFACE"

    move-object/from16 v78, v15

    invoke-direct/range {v78 .. v85}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v78, Lcom/aide/uidesigner/N$a;

    const-string v87, "android.widget.TextView"

    const-string v88, "inputType"

    const-string v89, "ProxyTextView"

    const-string v90, "setInputType()"

    sget-object v91, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v92, "ProxyTextView"

    const-string v93, "INPUTTYPE"

    move-object/from16 v86, v78

    invoke-direct/range {v86 .. v93}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v79, v15

    new-instance v15, Lcom/aide/uidesigner/N$a;

    move-object/from16 v80, v14

    const-string v14, "textSize"

    move-object/from16 v81, v1

    const-string v1, "setTextSize()"

    move-object/from16 v82, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->Zo:Lcom/aide/uidesigner/N$b;

    invoke-direct {v15, v12, v14, v1, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v84, "android.widget.TextView"

    const-string v85, "shadowColor"

    const-string v86, "ProxyTextView"

    const-string v87, "setShadowColor()"

    sget-object v88, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    move-object/from16 v83, v1

    invoke-direct/range {v83 .. v88}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v90, "android.widget.TextView"

    const-string v91, "shadowDx"

    const-string v92, "ProxyTextView"

    const-string v93, "setShadowDx()"

    sget-object v94, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v89, v5

    invoke-direct/range {v89 .. v94}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v84, "android.widget.TextView"

    const-string v85, "shadowDy"

    const-string v86, "ProxyTextView"

    const-string v87, "setShadowDy()"

    sget-object v88, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v83, v12

    invoke-direct/range {v83 .. v88}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v14, Lcom/aide/uidesigner/N$a;

    const-string v90, "android.widget.TextView"

    const-string v91, "shadowRadius"

    const-string v92, "ProxyTextView"

    const-string v93, "setShadowRadius()"

    sget-object v94, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v89, v14

    invoke-direct/range {v89 .. v94}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    move-object/from16 v83, v14

    new-instance v14, Lcom/aide/uidesigner/N$a;

    move-object/from16 v84, v12

    const-string v12, "android.widget.ScrollView"

    move-object/from16 v85, v5

    const-string v5, "fillViewport"

    move-object/from16 v86, v1

    const-string v1, "setFillViewport()"

    move-object/from16 v87, v15

    sget-object v15, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v14, v12, v5, v1, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v5, "src"

    const-string v12, "setImageDrawable()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->J8:Lcom/aide/uidesigner/N$b;

    move-object/from16 v88, v14

    move-object/from16 v14, v20

    invoke-direct {v1, v14, v5, v12, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v90, "android.widget.ImageView"

    const-string v91, "scaleType"

    const-string v92, "setScaleType()"

    sget-object v93, Lcom/aide/uidesigner/N$b;->DW:Lcom/aide/uidesigner/N$b;

    const-string v94, "android.widget.ImageView$ScaleType"

    const/16 v95, 0x0

    move-object/from16 v89, v5

    invoke-direct/range {v89 .. v95}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v15, "adjustViewBounds"

    move-object/from16 v20, v5

    const-string v5, "setAdjustViewBounds()"

    move-object/from16 v89, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v14, v15, v5, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v5, "baseLine"

    const-string v15, "setBaseLine()"

    move-object/from16 v90, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v14, v5, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v12, "baselineAlignBottom"

    const-string v15, "setBaselineAlignBottom()"

    move-object/from16 v91, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v14, v12, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v12, "cropToPadding"

    const-string v15, "setCropToPadding()"

    move-object/from16 v92, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v14, v12, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v12, "maxHeight"

    const-string v15, "setMaxHeight()"

    move-object/from16 v93, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v14, v12, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v12, "maxWidth"

    const-string v15, "setMaxWidth()"

    move-object/from16 v94, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v14, v12, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v12, "indeterminate"

    const-string v14, "setIndeterminate()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v95, v1

    move-object/from16 v1, v17

    invoke-direct {v5, v1, v12, v14, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "indeterminateOnly"

    const-string v15, "setIndeterminate()"

    move-object/from16 v17, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v1, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "indeterminateDrawable"

    const-string v15, "setIndeterminateDrawable()"

    move-object/from16 v96, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->J8:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v1, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "progressDrawable"

    const-string v15, "setProgressDrawable()"

    move-object/from16 v97, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->J8:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v1, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v5, "switchMinWidth"

    const-string v14, "setSwitchMinWidth()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v98, v12

    move-object/from16 v12, v19

    invoke-direct {v1, v12, v5, v14, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "switchPadding"

    const-string v15, "setSwitchPadding()"

    move-object/from16 v19, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "textOff"

    const-string v15, "setTextOff()"

    move-object/from16 v99, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "textOn"

    const-string v15, "setTextOn()"

    move-object/from16 v100, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "thumbTextPadding"

    const-string v15, "setThumbTextPadding()"

    move-object/from16 v101, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "thumb"

    const-string v15, "setThumbDrawable()"

    move-object/from16 v102, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "track"

    const-string v15, "setTrackDrawable()"

    move-object/from16 v103, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v12, "android.widget.ToggleButton"

    const-string v14, "textOff"

    const-string v15, "setTextOff()"

    move-object/from16 v104, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v12, "android.widget.ToggleButton"

    const-string v14, "textOn"

    const-string v15, "setTextOn()"

    move-object/from16 v105, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v107, "android.widget.Spinner"

    const-string v108, "gravity"

    const-string v109, "setGravity()"

    sget-object v110, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v111, "android.view.Gravity"

    const/16 v112, 0x0

    move-object/from16 v106, v5

    invoke-direct/range {v106 .. v112}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "dropDownWidth"

    const-string v15, "setDropDownWidth()"

    move-object/from16 v106, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v107, v1

    move-object/from16 v1, v18

    invoke-direct {v12, v1, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "dropDownHorizontalOffset"

    const-string v15, "setDropDownHorizontalOffset()"

    move-object/from16 v18, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v1, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "prompt"

    const-string v15, "setPrompt()"

    move-object/from16 v108, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v1, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "dropDownVerticalOffset"

    const-string v15, "setDropDownVerticalOffset()"

    move-object/from16 v109, v12

    sget-object v12, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v1, v14, v15, v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v14, "popupBackground"

    const-string v15, "setPopupBackgroundDrawable()"

    move-object/from16 v110, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    invoke-direct {v12, v1, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v5, "numStars"

    const-string v14, "setNumStars()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v111, v12

    move-object/from16 v12, v16

    invoke-direct {v1, v12, v5, v14, v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "rating"

    const-string v15, "setRating()"

    move-object/from16 v16, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v14, "stepSize"

    const-string v15, "setStepSize()"

    move-object/from16 v112, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v14, "isIndicator"

    const-string v15, "setIsIndicator()"

    move-object/from16 v113, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v12, "android.widget.DatePicker"

    const-string v14, "calendarViewShown"

    const-string v15, "setCalendarViewShown()"

    move-object/from16 v114, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v12, "android.widget.DatePicker"

    const-string v14, "spinnersShown"

    const-string v15, "setSpinnersShown()"

    move-object/from16 v115, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v1, Lcom/aide/uidesigner/N$a;

    const-string v12, "android.widget.ListView"

    const-string v14, "divider"

    const-string v15, "setDivider()"

    move-object/from16 v116, v5

    sget-object v5, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v5, Lcom/aide/uidesigner/N$a;

    const-string v12, "android.widget.ListView"

    const-string v14, "dividerHeight"

    const-string v15, "setDividerHeight()"

    move-object/from16 v117, v1

    sget-object v1, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct {v5, v12, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    const/16 v1, 0x6d

    new-array v1, v1, [Lcom/aide/uidesigner/N$a;

    const/4 v12, 0x0

    aput-object v2, v1, v12

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v13, v1, v2

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v8, v1, v2

    const/4 v2, 0x6

    aput-object v9, v1, v2

    const/4 v2, 0x7

    aput-object v10, v1, v2

    const/16 v2, 0x8

    aput-object v11, v1, v2

    const/16 v2, 0x9

    aput-object v6, v1, v2

    const/16 v2, 0xa

    aput-object v30, v1, v2

    const/16 v2, 0xb

    aput-object v31, v1, v2

    const/16 v2, 0xc

    aput-object v32, v1, v2

    const/16 v2, 0xd

    aput-object v33, v1, v2

    const/16 v2, 0xe

    aput-object v34, v1, v2

    const/16 v2, 0xf

    aput-object v35, v1, v2

    const/16 v2, 0x10

    aput-object v36, v1, v2

    const/16 v2, 0x11

    aput-object v37, v1, v2

    const/16 v2, 0x12

    aput-object v39, v1, v2

    const/16 v2, 0x13

    aput-object v38, v1, v2

    const/16 v2, 0x14

    aput-object v40, v1, v2

    const/16 v2, 0x15

    aput-object v41, v1, v2

    const/16 v2, 0x16

    aput-object v42, v1, v2

    const/16 v2, 0x17

    aput-object v43, v1, v2

    const/16 v2, 0x18

    aput-object v44, v1, v2

    const/16 v2, 0x19

    aput-object v45, v1, v2

    const/16 v2, 0x1a

    aput-object v25, v1, v2

    const/16 v2, 0x1b

    aput-object v46, v1, v2

    const/16 v2, 0x1c

    aput-object v47, v1, v2

    const/16 v2, 0x1d

    aput-object v48, v1, v2

    const/16 v2, 0x1e

    aput-object v50, v1, v2

    const/16 v2, 0x1f

    aput-object v49, v1, v2

    const/16 v2, 0x20

    aput-object v52, v1, v2

    const/16 v2, 0x21

    aput-object v51, v1, v2

    const/16 v2, 0x22

    aput-object v53, v1, v2

    const/16 v2, 0x23

    aput-object v24, v1, v2

    const/16 v2, 0x24

    aput-object v54, v1, v2

    const/16 v2, 0x25

    aput-object v55, v1, v2

    const/16 v2, 0x26

    aput-object v56, v1, v2

    const/16 v2, 0x27

    aput-object v57, v1, v2

    const/16 v2, 0x28

    aput-object v60, v1, v2

    const/16 v2, 0x29

    aput-object v59, v1, v2

    const/16 v2, 0x2a

    aput-object v58, v1, v2

    const/16 v2, 0x2b

    aput-object v23, v1, v2

    const/16 v2, 0x2c

    aput-object v61, v1, v2

    const/16 v2, 0x2d

    aput-object v22, v1, v2

    const/16 v2, 0x2e

    aput-object v21, v1, v2

    const/16 v2, 0x2f

    aput-object v62, v1, v2

    const/16 v2, 0x30

    aput-object v63, v1, v2

    const/16 v2, 0x31

    aput-object v64, v1, v2

    const/16 v2, 0x32

    aput-object v65, v1, v2

    const/16 v2, 0x33

    aput-object v67, v1, v2

    const/16 v2, 0x34

    aput-object v66, v1, v2

    const/16 v2, 0x35

    aput-object v68, v1, v2

    const/16 v2, 0x36

    aput-object v69, v1, v2

    const/16 v2, 0x37

    aput-object v70, v1, v2

    const/16 v2, 0x38

    aput-object v71, v1, v2

    const/16 v2, 0x39

    aput-object v72, v1, v2

    const/16 v2, 0x3a

    aput-object v73, v1, v2

    const/16 v2, 0x3b

    aput-object v74, v1, v2

    const/16 v2, 0x3c

    aput-object v75, v1, v2

    const/16 v2, 0x3d

    aput-object v76, v1, v2

    const/16 v2, 0x3e

    aput-object v77, v1, v2

    const/16 v2, 0x3f

    aput-object v82, v1, v2

    const/16 v2, 0x40

    aput-object v81, v1, v2

    const/16 v2, 0x41

    aput-object v80, v1, v2

    const/16 v2, 0x42

    aput-object v79, v1, v2

    const/16 v2, 0x43

    aput-object v78, v1, v2

    const/16 v2, 0x44

    aput-object v87, v1, v2

    const/16 v2, 0x45

    aput-object v86, v1, v2

    const/16 v2, 0x46

    aput-object v85, v1, v2

    const/16 v2, 0x47

    aput-object v84, v1, v2

    const/16 v2, 0x48

    aput-object v83, v1, v2

    const/16 v2, 0x49

    aput-object v88, v1, v2

    const/16 v2, 0x4a

    aput-object v89, v1, v2

    const/16 v2, 0x4b

    aput-object v20, v1, v2

    const/16 v2, 0x4c

    aput-object v90, v1, v2

    const/16 v2, 0x4d

    aput-object v91, v1, v2

    const/16 v2, 0x4e

    aput-object v92, v1, v2

    const/16 v2, 0x4f

    aput-object v93, v1, v2

    const/16 v2, 0x50

    aput-object v94, v1, v2

    const/16 v2, 0x51

    aput-object v95, v1, v2

    const/16 v2, 0x52

    aput-object v17, v1, v2

    const/16 v2, 0x53

    aput-object v96, v1, v2

    const/16 v2, 0x54

    aput-object v97, v1, v2

    const/16 v2, 0x55

    aput-object v98, v1, v2

    const/16 v2, 0x56

    aput-object v19, v1, v2

    const/16 v2, 0x57

    aput-object v99, v1, v2

    const/16 v2, 0x58

    aput-object v100, v1, v2

    const/16 v2, 0x59

    aput-object v101, v1, v2

    const/16 v2, 0x5a

    aput-object v102, v1, v2

    const/16 v2, 0x5b

    aput-object v103, v1, v2

    const/16 v2, 0x5c

    aput-object v104, v1, v2

    const/16 v2, 0x5d

    aput-object v105, v1, v2

    const/16 v2, 0x5e

    aput-object v107, v1, v2

    const/16 v2, 0x5f

    aput-object v106, v1, v2

    const/16 v2, 0x60

    aput-object v18, v1, v2

    const/16 v2, 0x61

    aput-object v108, v1, v2

    const/16 v2, 0x62

    aput-object v109, v1, v2

    const/16 v2, 0x63

    aput-object v110, v1, v2

    const/16 v2, 0x64

    aput-object v111, v1, v2

    const/16 v2, 0x65

    aput-object v16, v1, v2

    const/16 v2, 0x66

    aput-object v112, v1, v2

    const/16 v2, 0x67

    aput-object v113, v1, v2

    const/16 v2, 0x68

    aput-object v114, v1, v2

    const/16 v2, 0x69

    aput-object v115, v1, v2

    const/16 v2, 0x6a

    aput-object v116, v1, v2

    const/16 v2, 0x6b

    aput-object v117, v1, v2

    const/16 v2, 0x6c

    aput-object v5, v1, v2

    sput-object v1, Lcom/aide/uidesigner/N;->gn:[Lcom/aide/uidesigner/N$a;

    sget-object v2, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    array-length v3, v2

    array-length v1, v1

    add-int/2addr v3, v1

    new-array v1, v3, [Lcom/aide/uidesigner/N$a;

    sput-object v1, Lcom/aide/uidesigner/N;->u7:[Lcom/aide/uidesigner/N$a;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/aide/uidesigner/N;->gn:[Lcom/aide/uidesigner/N$a;

    sget-object v2, Lcom/aide/uidesigner/N;->u7:[Lcom/aide/uidesigner/N$a;

    sget-object v3, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    array-length v3, v3

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/aide/uidesigner/N;->u7:[Lcom/aide/uidesigner/N$a;

    new-instance v2, Lcom/aide/uidesigner/M;

    invoke-direct {v2}, Lcom/aide/uidesigner/M;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_bc9
    .catchall {:try_start_22 .. :try_end_bc9} :catchall_bca

    return-void

    :catchall_bca
    move-exception v0

    move-object v1, v0

    sget-boolean v2, Lcom/aide/uidesigner/N;->EQ:Z

    if-eqz v2, :cond_bd9

    const/4 v2, 0x0

    const-wide v3, -0x2bcfc5400f7211a3L  # -3.466598294562935E97

    invoke-static {v1, v3, v4, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_bd9
    throw v1
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x14a8bbe1c0800fe1L  # 3.761714741121719E-209

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/N;->tp:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/N;->EQ:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method
